source ../funcs.tcl

# setup variables
quietly set totalTestsCount 0;

# remove old variables
unset -nocomplain lstObjects;
unset -nocomplain cells;

# setup variables
quietly set lstObjects [find instance -r *];
quietly set lstCells [lsearch -all -inline $lstObjects "*\(carry*\)*"];
quietly lappend lstCells {*}[lsearch -all -inline $lstObjects "*\(CARRY*\)*"];
quietly array set cells [getArray $lstCells];
# unset -nocomplain lstCells;
quietly set timeUnit ns;
quietly set faultInjectionIterations 100;

quietly set cellsSize [array size cells];
echo "FFs count: $cellsSize";

add wave -position insertpoint  \
    /testbench_mnist_fcnn_fi/S_clk

# ==================== Faulty Run ====================
quietly set scriptStart [clock millis];
# max duration for each round is 28350 ns
quietly set simInitDuration 105;
quietly set simDuration 28350;
for {set i 0} {$i < $faultInjectionIterations} {incr i} {
    echo "Iteration [expr $i + 1]";
    quietly set seed [expr round(rand() * 1634819077)];
    quietly set fileId [open "sim/seed.txt" "w"]
    quietly puts -nonewline $fileId $seed
    quietly close $fileId
    quietly set whenCond ""
    quietly set lstTargets ""
    for {set j 0} {$j < 100} {incr j} {
        quietly set cellIndex [expr round(floor(rand() * $cellsSize))];
        quietly set cellName [string range $cells($cellIndex) 0 [expr [string first " " $cells($cellIndex)] - 1]];
        if { [string match -nocase "\{*" "$cellName"] } {
            if { [expr round(rand())] } {
                quietly set cellSignal "$cellName/O\}";
            } else {
                quietly set cellSignal "$cellName/CO\}";
            }
        } else {
            if { [expr round(rand())] } {
                quietly set cellSignal "\{$cellName/O\}";
            } else {
                quietly set cellSignal "\{$cellName/CO\}";
            }
        }
        lappend lstTargets "$cellSignal";

        quietly set faultStartTime [expr $j * $simDuration + round(rand() * 28250)];
        if { $j == 0 } {
            quietly set faultStartTime [expr $faultStartTime + $simInitDuration];
        }
        if { $j == 0 } {
            quietly set whenCond "\$now = ${faultStartTime}ns"
        } else {
            quietly set whenCond "$whenCond or \$now = ${faultStartTime}ns"
        }

        incr totalTestsCount;
    }

    quietly set whenIndex 0
    when "$whenCond" {
        quietly set target [lindex $lstTargets $whenIndex]
        if { $target != "" } {
            echo "Fault Injection [expr $i * 100 + $whenIndex + 1]";

            echo "    CARRY:   $target";

            quietly set originalValue [examine "$target"];
            echo "    Val0 :   $originalValue";

            quietly set value [hammingCode $originalValue 1];
            # quietly set value [changeRandomBit $originalValue 0 1];
            # quietly set value [changeRandomBit $originalValue [expr round(rand())] 1];
            echo "    Val1 :   $value";

            echo "    Start:   [expr $now / 1000000]";

            # quietly set faultDuration [expr  $simInitDuration + ($whenIndex + 1) * $simDuration - $now / 1000000];
            quietly set faultDuration 100;
            echo "    End  :   [expr $now / 1000000 + $faultDuration]";

            force -freeze "$target" 'b$value -cancel $faultDuration$timeUnit;
            # force -freeze "$target" 'b$value;

            quietly set whenIndex [expr $whenIndex + 1]
        }
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
unset -nocomplain cells;
unset -nocomplain timeUnit;
unset -nocomplain faultStartTime;
unset -nocomplain faultDuration;
unset -nocomplain faultInjectionIterations;

exit;
