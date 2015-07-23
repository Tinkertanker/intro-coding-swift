/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to make functions that do basic operations using loops. Remember to turn on the *Assistant Editor* before you start.
*/

func printHeader(title: String){
    println("")
    println(title);
    println("-------------------")
}

/*:
## Demo 1: Greater than 5?
This function tests if the number is greater than 5, and tells you if it is.
*/

printHeader("Demo 1: Greater than 5")
func greaterThanFive(number : Int) {
    if (number > 5) {
        println("\(number) is greater than 5!")
    } else {
        println("\(number) is less than or equal to 5!")
    }
}

greaterThanFive(10)
greaterThanFive(3)

/*:
## Exercise 3A: Greater Than Or Equals
Can you fill in this new function that also checks if it's equals to 10? Notice how it uses `else if`.
*/

printHeader("Exercise 3A")
func greaterThanOrEqualsToTen(number : Int) {
    if (number > 10) {
        // TODO: print a statement here
    } else if (number == 10) {
        // TODO: print a statement here
    } else {
        // TODO: print a statement here
    }
}

// Use these for testing
greaterThanOrEqualsToTen(5)
greaterThanOrEqualsToTen(10)
greaterThanOrEqualsToTen(100)

/*:
## Exercise 3B: BMI judger
Remember the BMI function you wrote in Worksheet 2-1? We've re-created it below. Now, instead of just telling the user their BMI, also let them know if they're underweight (BMI < 18.5), normal (BMI between 18.5 and 25), or overweight (BMI > 25). We've filled in one for you.
*/

printHeader("Exercise 3B");
func amIOverweight(weight: Double, height: Double) {
    
    var bmi = weight / (height * height)

    // TODO: The conditions are wrong! And so are the statements.
    if (bmi < 1) {
        println("You're underweight")
    } else if (bmi < 12) {
        println("You're .....?")
    } else {
        println("You're .....?")
    }
}

amIOverweight(78, 1.75)


/*:
## Demo 2: Even or Odd?
This function returns true if your number is even, and false if your number is odd. A **return value** is a variable the function "gives back" to you when it's done. Notice how we specify the **return type** of this function, with `->Bool`.
*/

printHeader("Demo 2: Even or Odd")

func isThisEven(number : Int)->Bool{
    // modulo division, or "remainder when number is divided by 2")
    if (number % 2 == 0) {
        return true
    } else {
        return false
    }
}

println(isThisEven(5))

/*:
## Exercise 3C: Is it divisible by 4?
Using the isThisEven function and modulo division, check whether testNumber is divisible by 4.
    There should be 3 different types of outcomes.

` 1 => 1 is Odd`

` 2 => 2 is Even but not divisible by 4`

` 8 => 8 is Even and divisible by 4 `
*/

printHeader("Exercise 3C");

var testNumber=4 // change this to test your function

if (isThisEven(testNumber)){
    println("\(testNumber) is Even");
} else {
    println("\(testNumber) is Odd");
}


/*:
## Exercise 3D: Overtime pay
Write a function, calculatePay, that prints out how much pay a worker should receive in one week, based on the following conditions:

* Minimum wage is $8 an hour! If it's less, print out an error
* If hours worked is less than 40, pay is just hours worked times hourly pay
* If hours worked is more than 40, the extra hours are charged at 1.5x
* Maximum hours payable is 60 a week. Any more than that, they just get paid for 60.
*/

printHeader("Exercise 3D")
func calculatePay(hoursWorked : Double, hourlyPay : Double) {
    if (hoursWorked < 0) {
        println("Error! Hours worked cannot be less than 0")
    } else if (hourlyPay < 0) {
        println("Error! Hourly pay cannot be less than 0")
    } // and more...
}

calculatePay(40, 10) // should print 400
calculatePay(50, 10) // should print 550
calculatePay(65, 10) // should print 700 (maximum)
calculatePay(10, 5) // should print error