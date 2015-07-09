/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to make functions that do basic math operations. Remember to turn on the *Assistant Editor* before you start.
*/

/*:
## Demo 1: Adder
This function adds 5 to any parameter you pass in, and prints it out.
*/

func addFive(number : Double) {
    var newNumber = number + 5
    println("Your new number is \(newNumber)!!!")
}

// Change the parameter below, and see what happens in the console output.
addFive(10)

/*:
## Exercise 1A: lb to kg
Make a function that changes pounds (lbs) to kilograms (kg) and prints it out.
*/

func poundToKg(pounds : Double) {
    var kg = pounds // TODO: this is wrong! You need to multiply by something.
    println("In kg, \(pounds) pounds is \(kg) kg.")
}

poundToKg(100.5)

/*:
## Exercise 1B: F to C
Make a function that changes Fahrenheit to Celsius and prints it out.
*/

func fahrenheitToCelsius(tempInFahrenheit : Double) {
    // TODO: What goes in here? Refer to poundToKg to figure it out.
    // You also need to find out how to change F to C. Look it up online.
}

fahrenheitToCelsius(98.7)

/*:
## Demo 2: Multiplier
This function multiples two numbers together.
*/

func multiplyNumbers(num1 : Double, num2 : Double) {
    var result : Double = num1 * num2
    println("Multiplying \(num1) by \(num2) gives you \(result)")
}

multiplyNumbers(50, 2.5)

/*: 
## Exercise 1C: BMI calculator
Make a function that takes in weight and height, and prints out your BMI.
*/

func calculateBMI(weight : Double, height : Double) {
    var bmi = weight // TODO: this is wrong! 
    println("Your BMI is \(bmi)")
}

calculateBMI(55, 1.65)


