



proc mergeSort {numList} {
    set length [llength $numList]
    if { $length <= 1} {
        return $numList
    }
    set mid [expr $length / 2]
    set left [lrange $numList 0 [expr $mid - 1]]
    set right [lrange $numList $mid end]
    return [merge [mergeSort $left] [mergeSort $right]]

}

proc merge { left  right} {
   set result {}
    while { [llength $left] > 0 && [llength $right] > 0 } {
        if {[ lindex $left 0] < [lindex $right 0 ]} {
            lappend result [ lindex $left 0] 
            set left [lreplace $left 0 0]
        } else {
             lappend result [ lindex $right 0] 
            set right [lreplace $right 0 0]
        }
    }
    
      lappend result {*}$left
      lappend result {*}$right
      return $result

    #return [concat $result $left $right]
}


#! main 
if {1} {
puts "\v\vplease enter a list of the numbers from 0 to 9 but in any order you want,\nI will try to sort it as quickly as possible:\v"
set input [gets stdin]
set nList [split $input " "]

puts "list before sorting :"
set i 1
foreach li $nList {
    puts "list of index $i : $li"
    incr i
}
puts "\v-----------------------------------------------------------------------\v"


set sortedList [mergeSort $nList]

foreach i $sortedList {
    puts $i
}

}   