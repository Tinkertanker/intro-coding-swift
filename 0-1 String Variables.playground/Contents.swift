/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to learn about variables.
Remember to turn on the *Assistant Editor* before you start.
*/

/*:
## Part 1A: Strings
This is a demonstration of strings
*/

println("Part 1: Strings")
println("--------------------------------");
println("")

//: Read through this code.

var name : String = "Steve"
var surname : String = "Jobs"
var space : String = " " // there's a space in between!
var fullName : String = name + space + surname
println("\(fullName) was the CEO of Apple.")
println("") // This prints an empty line. Can you figure out why?

//: Now, when we *use* those variables, we no longer need **var**.

name = "Tim"
surname = "Cook"
fullName = name + space + surname
println("Now, \(fullName) is the CEO of Apple.")
println("")

//: Can you change the name and surname to your own?

name = "Your Name"
surname = "Your Surname"
fullName = name + space + surname
println("The future CEO of Apple is \(fullName).")
