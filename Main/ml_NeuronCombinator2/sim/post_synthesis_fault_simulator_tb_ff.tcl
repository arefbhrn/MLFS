source ../psfs_funcs.tcl

# setup variables
quietly set totalTestsCount 0;

# remove old variables
unset -nocomplain lstObjects;
unset -nocomplain ffCells;

# setup variables
quietly set lstObjects [find instance -r *];
quietly set lstFFCells [lsearch -all -inline $lstObjects "*\(fdce\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(FDCE\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(fdpe\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(FDPE\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(fdre\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(FDRE\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(fdse\)*"];
quietly lappend lstFFCells {*}[lsearch -all -inline $lstObjects "*\(FDSE\)*"];
quietly array set ffCells [getArray $lstFFCells];
# unset -nocomplain lstFFCells;
quietly set timeUnit ns;
quietly set faultInjectionIterations 100;

quietly set ffCellsSize [array size ffCells];
echo "FFs count: $ffCellsSize";

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
# for {set i 0} {$i < $ffCellsSize} {incr i} {
#     quietly set ffName [string range $ffCells($i) 0 [expr [string first " " $ffCells($i)] - 1]];
#     quietly set ffInitSignal "$ffName/INIT_reg";
#     if { [string match -nocase "\{*" "$ffInitSignal"] } {
#         add wave -position insertpoint "$ffInitSignal\}\}"
#     } else {
#         add wave -position insertpoint "$ffInitSignal"
#     }
#     # echo "    FF $i  :   $ffInitSignal";
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
        quietly set faultStartTime [expr $j * $simDuration + round(rand() * 28250)];
        if { $j == 0 } {
            quietly set faultStartTime [expr $faultStartTime + $simInitDuration];
        }
        quietly set faultDuration 100;
        # quietly set faultDuration [expr ($j + 1) * $simDuration - $faultStartTime];
        quietly set ffIndex [expr round(floor(rand() * $ffCellsSize))];
        quietly set ffName [string range $ffCells($ffIndex) 0 [expr [string first " " $ffCells($ffIndex)] - 1]];
        if { [string match -nocase "\{*" "$ffName"] } {
            quietly set ffInitSignal "$ffName/q_out\}";
        } else {
            quietly set ffInitSignal "\{$ffName/q_out\}";
        }
        echo "    FF  :   $ffInitSignal";
        quietly set originalFFInitValue [examine "$ffInitSignal"];
        echo "    Val0 :   $originalFFInitValue";
        # quietly set value [hammingCode $originalFFInitValue 1];
        quietly set value [changeRandomBit $originalFFInitValue 0 1];
        # quietly set value [changeRandomBit $originalFFInitValue [expr round(rand())] 1];
        echo "    Val1 :   $value";

        if { [catch {
            # quietly set faultEndTime [expr $simInitDuration + $faultStartTime + $faultDuration];
            quietly set faultEndTime [expr $faultStartTime + $faultDuration];
            echo  "    Start:   $faultStartTime";
            echo  "    End  :   $faultEndTime";
            # echo "force -freeze $ffInitSignal 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit";
            force -freeze "$ffInitSignal" 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit;
            # force -freeze "$ffInitSignal" 'b$value $faultStartTime$timeUnit;
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
unset -nocomplain ffCells;
unset -nocomplain timeUnit;
unset -nocomplain faultStartTime;
unset -nocomplain faultDuration;
unset -nocomplain faultInjectionIterations;

exit;
