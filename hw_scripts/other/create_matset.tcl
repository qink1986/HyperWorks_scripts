namespace eval create_matset {
    proc main {} {
	    *createmarkpanel mats 1 
		set mat_ids [hm_getmark mats 1]
		*clearmark mats 1
	    foreach mat_id $mat_ids {
		    set mat_name [hm_getcollectorname mats $mat_id]
		    *createmark materials 2 $mat_name
            *createstringarray 2 "elements_on" "geometry_on"
            *isolateonlyentitybymark 2 1 2
            *clearmarkall 1
			*createmark elements 1 "displayed"
            if { [catch {*entitysetcreate "$mat_name" elements 1}] == 1} {
			    *entitysetupdate "$mat_name" elements 1
			}
		}
	}
} 
create_matset::main

