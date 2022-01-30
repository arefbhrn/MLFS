source ../psfs_funcs.tcl

# setup variables
quietly set totalTestsCount 0;

# remove old variables
unset -nocomplain lstObjects;
unset -nocomplain lutCells;

# setup variables
quietly set lstObjects [find instance -r *];
quietly set lstLutCells [lsearch -all -inline $lstObjects "*\(lut*\)*"];
quietly lappend lstLutCells {*}[lsearch -all -inline $lstObjects "*\(LUT*\)*"];
quietly array set lutCells [getArray $lstLutCells];
unset -nocomplain lstLutCells;
quietly set timeUnit ns;
quietly set faultInjectionIterations 100;

quietly set lutCellsSize [array size lutCells];
echo "LUTs count: $lutCellsSize";

# add wave -position insertpoint  \
#     /testbench_mnist_fcnn_fi/C_CLOCK_PERIOD \
#     /testbench_mnist_fcnn_fi/C_IMAGE_FILEPATH \
#     /testbench_mnist_fcnn_fi/C_NBITS_CLASSIF_OUT \
#     /testbench_mnist_fcnn_fi/C_TARGET_FILEPATH \
#     /testbench_mnist_fcnn_fi/S_ackPixel_uut \
#     /testbench_mnist_fcnn_fi/S_classif_uut \
#     /testbench_mnist_fcnn_fi/S_classifValid_uut \
#     /testbench_mnist_fcnn_fi/S_clk \
#     /testbench_mnist_fcnn_fi/S_enable_simul \
#     /testbench_mnist_fcnn_fi/S_LastPixelFlag \
#     /testbench_mnist_fcnn_fi/S_NUMBER_CLASSIF_ERRORS \
#     /testbench_mnist_fcnn_fi/S_pixel_array \
#     /testbench_mnist_fcnn_fi/S_pixel_uut \
#     /testbench_mnist_fcnn_fi/S_readyClassif_uut \
#     /testbench_mnist_fcnn_fi/S_requestPixel_uut \
#     /testbench_mnist_fcnn_fi/S_resetN_uut \
#     /testbench_mnist_fcnn_fi/S_SimulationEnded \
#     /testbench_mnist_fcnn_fi/S_targets_array
# for {set i 0} {$i < $lutCellsSize} {incr i} {
#     quietly set lutName [string range $lutCells($i) 0 [expr [string first " " $lutCells($i)] - 1]];
#     quietly set lutInitSignal "$lutName/INIT_reg";
#     if { [string match -nocase "\{*" "$lutInitSignal"] } {
#         add wave -position insertpoint "$lutInitSignal\}\}"
#     } else {
#         add wave -position insertpoint "$lutInitSignal"
#     }
#     # echo "    Lut $i  :   $lutInitSignal";
# }

# ==================== Faulty Run ====================
quietly set scriptStart [clock millis];
for {set i 0} {$i < $faultInjectionIterations} {incr i} {
    # max duration for each round is 28350 ns
    quietly set simInitDuration 105;
    quietly set simDuration 28350;
    for {set j 0} {$j < 100} {incr j} {
        echo "Iteration [expr $i * 100 + $j + 1]";
        quietly set seed [expr round(rand() * 1634819077)];
        quietly set fileId [open "sim/seed.txt" "w"]
        quietly puts -nonewline $fileId $seed
        quietly close $fileId
        echo "    Seed :   $seed";
        quietly set faultStartTime [expr $j * $simDuration + round(rand() * 28340)];
        if { $j == 0 } {
            quietly set faultStartTime [expr $faultStartTime + $simInitDuration];
        }
        # quietly set faultDuration 10;
        quietly set faultDuration [expr ($j + 1) * $simDuration - $faultStartTime];
        quietly set lutIndex [expr round(floor(rand() * $lutCellsSize))];
        quietly set lutName [string range $lutCells($lutIndex) 0 [expr [string first " " $lutCells($lutIndex)] - 1]];
        if { [string match -nocase "\{*" "$lutName"] } {
            quietly set lutInitSignal "$lutName/INIT_reg\}";
        } else {
            quietly set lutInitSignal "\{$lutName/INIT_reg\}";
        }
        echo "    Lut  :   $lutInitSignal";
        quietly set originalLutInitValue [examine "$lutInitSignal"];
        echo "    Val0 :   $originalLutInitValue";
        quietly set value [hammingCode $originalLutInitValue 8];
        # quietly set value [changeRandomBit $originalLutInitValue 0 1];
        echo "    Val1 :   $value";

        if { [catch {
            quietly set faultEndTime [expr $simInitDuration + $faultStartTime + $faultDuration];
            echo  "    Start:   $faultStartTime";
            echo  "    End  :   $faultEndTime";
            # echo "force -freeze $lutInitSignal 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit";
            force -freeze "$lutInitSignal" 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit;
            # force -freeze "$lutInitSignal" 'b$value $faultStartTime$timeUnit;
        } err] } {
            echo "OOPS!!! ERROR... : '$err'";
            unset -nocomplain value;
            restart -force;
            continue;
        }

        incr totalTestsCount;
    }

    quietly set simStart [clock millis];
    run -all;
    quietly set simEnd [clock millis];
    echo "    Elapsed: [formatMillisInterval [expr $simEnd - $simStart]]";

    unset -nocomplain value;
    restart -force;
}
quietly set scriptEnd [clock millis];
echo "Elapsed: [formatMillisInterval [expr $scriptEnd - $scriptStart]]";
# ==================== End of Faulty Run ====================

echo "Summary:";
echo "    Total Fault Injections: $totalTestsCount";

# unset all variables
unset -nocomplain lstObjects;
unset -nocomplain lutCells;
unset -nocomplain timeUnit;
unset -nocomplain faultStartTime;
unset -nocomplain faultDuration;
unset -nocomplain faultInjectionIterations;

exit;
