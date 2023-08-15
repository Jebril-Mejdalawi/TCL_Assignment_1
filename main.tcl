




#set numlist {split [gets stdin] " "}

set input [gets stdin]
set numlist [split $input " "]

puts "list is :"
set i 1
foreach li $numlist {
    puts " $i : $li"
    incr i
}