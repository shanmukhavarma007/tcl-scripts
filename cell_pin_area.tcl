#!/bin/tclsh

proc area {lib_file} {
    set t_area 0

    while {[gets $lib_file line] != -1} {
        if {[regexp {cell\s+\((\S+)\)} $line -> cellname]} {
            set current_cell $cellname
        }

        if {[regexp {\s+area\s+:\s+(\S+);} $line -> av] && $current_cell ne ""} {
            set t_area [expr $t_area+$av]
            puts "Cell Name: $current_cell Area : $av"
        }
    }

    close $lib_file
    puts $t_area
}

proc pins {lib_file} {
    set pin {}
    set current_cell ""

    while {[gets $lib_file line] != -1} {
        if {[regexp {cell\s+\((\S+)\)} $line -> cellname]} {
            set current_cell $cellname
        }

        if {[regexp {pin\((\S+)\)} $line mat p] && $current_cell ne ""} {
            dict lappend pin $current_cell $p
        }
    }

    close $lib_file
    return $pin
}

set lib_file [open /process/hosted/modulefiles/PD/pdk/foundries/tsmc/N28/versions/v1.0/stdcells/9T/hvt/lib/ccs/tcbn28hpcplusbwp40p140hvtssg0p8lvm40c_ccs.lib r]

area $lib_file

set d_pin [pins $lib_file]

dict for {key value} $d_pin {
    puts "Cell:$key and it's pins : $value,pin count:[llength $value]"
}
