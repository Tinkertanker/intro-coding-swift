/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to make functions that do basic operations using loops. Remember to turn on the *Assistant Editor* before you start.
*/

/*:
## Demo 1: Count to N
This function counts from 1 to the number you specify.
*/

func countTo(number : Int) {
    for i in 1...number {
        println("Your current number is \(i)")
    }
}

countTo(5)

/*:
## Exercise 2A: Times table, up to 10
Write a function that will print out a times table for the given number called "num", up to 10x. The starter code given only goes up to 5, for the number 6.
*/

println("")
println("Exercise 2A")
println("------------")
println("")

func timesTableTo10(num : Int) {
    for i in 1...5 {
        var result = 6 * i
        println("6 times \(i) equals \(result)")
    }
}

timesTableTo10(13)

/*:
## Exercise 2B: Times table, up to any number
Write a function that will print out a times table for the given number called "num", up to "maximum" times. So, if we called `timesTableTo(5, 6)`, it will print the times table of 6, up to 30. The starter code given only goes up to 10, for the number 12.
*/

println("")
println("Exercise 2B")
println("------------")
println("")

func timesTableTo(maximum : Int, num : Int) {
    for i in 1...10 {
        var result = 12 * i
        println("12 times \(i) equals \(result)")
    }
}

timesTableTo(10, 13)


/*:
## Exercise 2A: 99 bottles of beer
Write a function that, based on your input, sings the song "N bottles of beer on the wall". Currently, all it does is sing the same line 5 times!
*/

println("")
println("Exercise 2C")
println("------------")
println("")

func singBottlesOfBeer(numBottles : Int) {
    for i in reverse(1...5) { // notice this is counting from 5 to 1!
        println("99 bottles of beer on the wall, 99 bottles of beer")
        println("Take one down, pass it around, 99 bottles of beer on the wall")
        println("") // blank line
    }
}

singBottlesOfBeer(5)
