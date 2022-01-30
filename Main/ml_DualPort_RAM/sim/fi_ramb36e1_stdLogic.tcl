source ../psfs_funcs.tcl

# setup variables
quietly set totalTestsCount 0;

# remove old variables
unset -nocomplain lstObjects;
unset -nocomplain cells;

# setup variables
quietly set lstObjects [find instance -r *];
quietly set lstCells [lsearch -all -inline $lstObjects "*\(ramb36e1\)*"];
quietly lappend lstCells {*}[lsearch -all -inline $lstObjects "*\(RAMB36E1\)*"];
quietly array set cells [getArray $lstCells];
# unset -nocomplain lstCells;
quietly set timeUnit ns;
quietly set faultInjectionIterations 100;

quietly set cellsSize [array size cells];
echo "RAMB36E1s count: $cellsSize";

# ==================== Faulty Run ====================
quietly set scriptStart [clock millis];
# max duration for each round is 28350 ns
quietly set simInitDuration 105;
quietly set simDuration 28350;
for {set i 0} {$i < $faultInjectionIterations} {incr i} {
    quietly set seed [expr round(rand() * 1634819077)];
    quietly set fileId [open "sim/seed.txt" "w"]
    quietly puts -nonewline $fileId $seed
    quietly close $fileId
    echo "Seed :   $seed";
    for {set j 0} {$j < 100} {incr j} {
        echo "FI [expr $i * 100 + $j + 1]";
        quietly set cellIndex [expr round(floor(rand() * $cellsSize))];
        quietly set cellName [string range $cells($cellIndex) 0 [expr [string first " " $cells($cellIndex)] - 1]];
        if { [string match -nocase "\{*" "$cellName"] } {
            quietly set cellSignal "$cellName/RSTRAMARSTRAM\}";
        } else {
            quietly set cellSignal "\{$cellName/RSTRAMARSTRAM\}";
        }
        echo "    RAMB :   $cellSignal";

        if { [catch {
            # ==================== Fault Timing ==================== #
            # --------- Start Time
            quietly set faultStartTime [expr $simInitDuration + $j * $simDuration + round(rand() * 28250)];
            echo  "    Start:   $faultStartTime";

            # --------- Duration
            quietly set faultDuration [expr $simInitDuration + ($j + 1) * $simDuration - $faultStartTime];
            # quietly set faultDuration 100;

            # --------- End Time
            quietly set faultEndTime [expr $faultStartTime + $faultDuration];
            if { [catch {
                echo  "    End  :   $faultEndTime";
            } err] } {
            }
            # ==================== End of Fault Timing ==================== #

            # ==================== Forcing Fault on Signal ==================== #
            quietly set val [expr round(rand())];
            force -freeze "$cellSignal" 'b$val $faultStartTime$timeUnit -cancel $faultEndTime$timeUnit;
            # force -freeze "$cellSignal" 'b$val $faultStartTime$timeUnit
            echo "    Val1 :   $val";
            # ==================== End of Forcing Fault on Signal ==================== #
        } err] } {
            echo "OOPS!!! ERROR... : '$err'";
            unset -nocomplain value;
            restart -force;
            continue;
        }

        incr totalTestsCount;
    }

    # quietly set prev_time [expr $now / 1000000]
    # when {S_readyClassif_uut'event and S_readyClassif_uut = '1'} {
    #     quietly set prev_time [expr $now / 1000000 - $prev_time]
    #     echo "done at $prev_time"
    #     quietly set prev_time [expr $now / 1000000]
    # }

    # quietly set accuracy 0
    # echo "Accuracy -> 100%"
    # quietly set num_classif 0
    # when {S_readyClassif_uut'event and S_readyClassif_uut = '1'} {
    #     quietly set num_classif [expr $num_classif + 1]
    # }
    # quietly set num_errors 0
    # when {S_NUMBER_CLASSIF_ERRORS'event} {
    #     quietly set num_errors [examine S_NUMBER_CLASSIF_ERRORS]
    #     quietly set accuracy [expr 100 - $num_errors * 100.0 / ($num_classif)]
    #     echo "Accuracy -> [format "%.2f" $accuracy]%"
    # }

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
