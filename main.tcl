



proc merge {numList} {
    
}

proc mergeSort { left , right} {
    
}


#! main 
if {1} {
puts "\v\vplease enter a list of the numbers from 0 to 9 but in any order you want,\nI will try to sort it as quickly as possible:\v"
set input [gets stdin]
set numlist [split $input " "]

puts "list before sorting :"
set i 1
foreach li $numlist {
    puts "list of index $i : $li"
    incr i
}
puts "\v-----------------------------------------------------------------------\v"
#!trying to use lsort predefined command to make sure the list is correctly parsed.
set sortedList [lsort $numlist]  

puts "list After sorting :"
set i 1
foreach li $sortedList {
    puts "list of index $i : $li"
    incr i
}
}