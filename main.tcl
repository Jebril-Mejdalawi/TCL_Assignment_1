



proc mergeSort {numList} {
    set length [llength $numList]
    if { $length <= 1} {
        #return $numList
        return 0
    }

    set mid [expr $length / 2]
    set left [lrange $numList 0 [expr $mid - 1]]
    set right [lrange $numList $mid $length-1]
    return merge mergeSort $left mergeSort $right

    #testing values
    if 0 {
    puts $mid
    puts $left
    puts $right
    }
  
}

proc merge { left , right} {
    
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


puts [mergeSort $nList]

}