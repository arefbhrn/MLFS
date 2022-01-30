source ../psfs_funcs.tcl

# setup variables
quietly set totalTestsCount 0;

# remove old variables
unset -nocomplain lstObjects;
unset -nocomplain lutCells;

# setup variables
quietly set lstObjects [find instance -r *];
quietly set lstLutCells [lsearch -all -inline $lstObjects "*\(lut*\)*"];
quietly lappend lstLutCells [lsearch -all -inline $lstObjects "*\(LUT*\)*"];
quietly array set lutCells [getArray $lstLutCells];
unset -nocomplain lstLutCells;
quietly set timeUnit ns;
quietly set faultInjectionIterations 1;

quietly set lutCellsSize [array size lutCells];
echo "LUTs count: $lutCellsSize";

# ==================== Faulty Run ====================
quietly set scriptStart [clock millis];
for {set i 0} {$i < $faultInjectionIterations} {incr i} {
    echo "Iteration [expr $i + 1]";
    quietly set seed "1513835475";
    quietly set fileId [open "sim/seed.txt" "w"]
    quietly puts -nonewline $fileId $seed
    quietly close $fileId
    echo "    Seed :   $seed";
    quietly set faultStartTime 72;
    quietly set faultDuration 10;
    quietly set lutInitSignal {/testbench_mnist_fcnn_fi/unit_under_test_inst/Argmax_1/\max_I1_carry_i_7__4\/INIT_reg};
    quietly set originalLutInitValue [examine "$lutInitSignal"];
    echo  "    Val0 :   $originalLutInitValue";
    quietly set value "1101110111000011";
    echo  "    Val1 :   $value";

    if { [catch {
        quietly set faultEndTime [expr $faultStartTime + $faultDuration];
        echo  "    Start:   $faultStartTime";
        echo  "    End  :   $faultEndTime";
        # echo "force $lutInitSignal 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit";
        # force "$lutInitSignal" 'b$value $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit;
        force "$lutInitSignal" 'b$value $faultStartTime$timeUnit;
    } err] } {
        echo "OOPS!!! ERROR... : '$err'";
        unset -nocomplain value;
        restart -force;
        continue;
    }

    incr totalTestsCount;

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
