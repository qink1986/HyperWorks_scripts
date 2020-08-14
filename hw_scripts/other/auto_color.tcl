*createmarkpanel components 1 
set comp_ids [hm_getmark components 1]
*clearmark components 1
set r_nums {}
foreach comp_id $comp_ids {
    set r_num [format %.0f [expr rand()*61+3]]
	while {([lsearch $r_nums $r_num] != -1)||(($r_num <= 16) && ($r_num >= 9))} {
	    if {[llength $r_nums] >= 54} {
		    set r_nums {}
			continue
		}
		set r_num [format %.0f [expr rand()*61+3]]
	}
	lappend r_nums $r_num	
    *createmark comps 1 "by id" $comp_id
	*colormark components 1 $r_num
}

