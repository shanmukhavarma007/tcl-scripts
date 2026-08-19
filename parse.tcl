#!/usr/bin/tclsh

proc timing {files} {
	lassign "0 0" s h
	set ssl ""
	set hsl ""
	foreach f $files {
		if {[regexp -nocase {sta} $files]} {
			set fp [open $f r]
			while {[gets $fp line] != -1} {
				if {[regexp {SETUP_VIOLATION} $line]} {
					regexp {Slack=([+-]?(?:\d+(?:\.\d+))?|\.\d+)} $line mat v1
					lappend ssl $v1
					incr s
				} elseif {[regexp {HOLD_VIOLATION} $line]} {
					regexp {Slack=([+-]?(?:\d+(?:\.\d+))?|\.\d+)} $line mat v1
					lappend hsl $v1
					incr h
				}
			}
		}
		close $fp
	}
	puts "Total Timing Violations : [expr $s+$h]"
	puts "Setup Vioaltions : [expr $s]"
	puts "Hold Vioaltions : [expr $h]"
	puts "Setup Slack Values $ssl"
	puts "Hold Slack Values :$hsl"
	puts "Worst Setup Slack:[lindex [lsort -real $ssl] 0]"
	puts "Worst Hold Slack:[lindex [lsort -real $hsl] 0]"
	
		

}
	
			

proc extraction {files} {
	lassign "0 0" ec wc
	foreach f $files {
		set fp [open $f r]
		while {[gets $fp line] != -1} {
			if {[regexp {^ERROR} $line]} {
				puts "$f : $line"
				incr ec
							
			} elseif {[regexp {^WARNING} $line]} {
				puts "$f : $line"
				incr wc
			}
				

	}
	
	close $fp
}
puts "Total Scanned : [llength $files]"
puts "Total Errors : $ec"
puts "Total Warnings : $wc"
puts "Total Issues : [expr $ec+$wc]"
}
proc extract {} {
	set log_files ""
	foreach files [glob -nocomplain -directory vlsi -type f "falcon-x/*/*.log"] {
		if {[string match "*reports*" $files]} {
			continue
		} else {
			lappend log_files $files

		}
	}
	return $log_files
}

puts "FIle/Script Invoked : $argv0"
set res [extract]
extraction $res
timing $res

