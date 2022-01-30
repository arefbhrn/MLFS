# ==================== Functions ====================

proc getArray {mList} {
    set i 0;
    foreach item $mList {
        set mArray($i) $item;
        incr i;
    }
    # unset mList;
    return [array get mArray];
}

proc getSignalLength {signal} {
    set signalLength 1;
    set signalDesc [describe $signal];
    if { [string match {Array(*) \[length *] of*} $signalDesc] == 1 } {
        set signalLength [string trim [lindex $signalDesc 4] \]];
    }
    return $signalLength;
}

proc hammingCode {bin {distance {1}}} {
    # returns a list of all possible codes with distance related to the $bin
    # $bin -> a binary string : 1011

    if { $distance > [string length $bin] } {
        set distance [string length $bin];
    }

    set codes "";
    if {$distance > 1} {
        for {set i 0} {$i < [expr [string length $bin] - 1]} {incr i} {
            set val [expr ![string index $bin $i]];
            # set code "[string range $bin 0 [expr $i - 1]]$val[string range $bin [expr $i + 1] end]";
            set code "[string range $bin 0 [expr $i - 1]][string range $bin [expr $i + 1] end]";
            foreach mCode [hammingCode $code [expr $distance - 1]] {
                set code "[string range $mCode 0 [expr $i - 1]]$val[string range $mCode [expr $i] end]";
                lappend codes $code;
            }
        }
        foreach element $codes {dict set tmp $element 1}
        set uniqueCodes [dict keys $tmp];
        return $uniqueCodes;
    } else {
        for {set i 0} {$i < [string length $bin]} {incr i} {
            set val [expr ![string index $bin $i]];
            set code "[string range $bin 0 [expr $i - 1]]$val[string range $bin [expr $i + 1] end]";
            lappend codes $code;
        }
        return $codes;
    }
}

proc hammingCode {bin {distance {1}}} {
    # returns a random code with specified distance related to the $bin
    # $bin -> a binary string : 1011

    if { $distance > [string length $bin] } {
        set distance [string length $bin];
    }

    set code $bin;
    set changedIndices "";
    while { [llength $changedIndices] < $distance } {
        set index [expr round(rand() * [expr [string length $bin] - 1])]
        set orgVal [string index $bin $index];
        if { [lsearch $changedIndices $index] > -1 } {
            continue;
        }
        lappend changedIndices $index;
        set newVal [expr ![string index $code $index]];
        set code "[string range $code 0 [expr $index - 1]]$newVal[string range $code [expr $index + 1] end]";
    }
    return $code;
}

proc changeRandomBit {bin toBit count} {
    # $bin -> a binary string : 1011
    # $toBit -> 0
    # Sample output -> 0011

    if { $count > [string length $bin] } {
        set count [string length $bin]
    }

    set code $bin;
    set changedIndices "";
    while { [llength $changedIndices] < $count } {
        set index [expr round(rand() * [expr [string length $bin] - 1])]
        if { [lsearch $changedIndices $index] > -1 } {
            continue;
        }
        lappend changedIndices $index;
        set code "[string range $code 0 [expr $index - 1]]$toBit[string range $code [expr $index + 1] end]";
    }
    return $code
}

proc bin2hex {bin} {
    set result ""
    set prepend [string repeat 0 [expr (4-[string length $bin]%4)%4]]
    foreach g [regexp -all -inline {[01]{4}} $prepend$bin] {
        foreach {b3 b2 b1 b0} [split $g ""] {
            append result [format %X [expr {$b3*8+$b2*4+$b1*2+$b0}]]
        }
    }
    return $result
}

proc formatMillisInterval {intervalMillis} {
    set millis [expr $intervalMillis % 1000]
    set intervalSeconds [expr ($intervalMillis - $millis) / 1000]
    set s [expr $intervalSeconds % 60]
    set i [expr $intervalSeconds / 60]
    set m [expr $i % 60]
    set i [expr $i / 60]
    set h [expr $i % 24]
    set d [expr $i / 24]
    return [format "%+d:%02d:%02d:%02d:%03d" $d $h $m $s $millis]
}

# ==================== End of Functions ====================

