/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to learn about variables.
Remember to turn on the *Assistant Editor* before you start.
*/

/*:
## Part 1B: Numbers
This is a demonstration of number variables
*/

println("Part 1B: Numbers")
println("--------------------------------")
println("")

//: Read through this code.

var a : Int = 5
var b : Int = 6
var c : Int = a * b // * is times
println("a is \(a), b is \(b), and a times b is \(c)")
println("")

var d : Double = 5.0
var e : Double = 2.4
var f : Double = d / e // / is divide
println("d is \(d), e is \(e), and d divided by e is \(f)")
println("")

//: Your turn! Can you edit the variables **result1** and **result2** so that the sentence is correct? 

//: **Hint for result1**: squaring is the same as multiplying something by itself.

var var1 : Int = 5
var result1 : Int = var1 + var1 // THIS IS WRONG! Please fix it.
println("I know that the square of \(var1) is \(result1)!")
println("")

//: **Hint for result2**: * is multiply, / is divide.

var var2 : Double = 4.0
var var3 : Double = 5.0
var result2 = var2 * var3 // THIS IS WRONG! Please fix it.
println("My maths skills say that \(var2) divided by \(var3) is equal to \(result2)!")
