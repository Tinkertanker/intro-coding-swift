/*:
# Intro to Programming in Swift Worksheet 1
Welcome to Swift! In this worksheet, you'll learn about variables & constants, the console, and doing basic math in Swift.
*/

/*:
## Part 1: Variables
Variables are containers that store information. We can store a few *types* of information:
* Strings: Like **welcome**, these store pieces of text.
* Integer numbers: Whole numbers, like **numberOfStudents**
* Numbers with decimals: Called *Float* or *Double*, these are numbers with decimal points, such as **temperatureToday**.

Some things to note:
* When you *first* create a variable, you have to put the word `var` in front of it. This is called *declaring* the variable. When you next use it, you don't have to say `var` any more, just use the variable name.
* Variable names must start with letters, and cannot include spaces. For multiple words, we use camelCase, which means capitalisingTheFirstLetterOfEachWord.
* You can use add variables together! Try adding numberOfStudents and absentStudents.
* You can join strings together too! See the **helloWorld** variable, and edit that so that it's correct.

There are some things in the examples below you need to change. Look for the word `TODO`.
*/

var welcome = "Hello world!"
var numberOfStudents = 15
var absentStudents = 5
var temperatureToday = 30.5

// Now we specify the types. This is optional, but sometimes useful!
var potato : String = "Potato!"
var numberOfPotatoes : Int = 20
var temperatureTomorrow : Double = 30.8

// We can change the temperature...
temperatureToday = 34.5 // so hot!
// Or the number of students.
numberOfStudents = 12 // 3 more have called in sick
absentStudents = 8 

var totalStudents = numberOfStudents + 1 // TODO: Wait, this is wrong. Change this to reflect the actual total

var hello = "Hello "
var world = "world!"
var helloWorld = hello + "potato" // TODO: That's not what we want to say! Change this to Hello world, using the 'world' variable

/*:
### Exercise 1
For this exercise: 
1. Change the value of **firstName** to your given name (e.g. "Steven", "Hongyi", "Akmal"), and the value of **lastName** to your surname or family name (e.g. "Chan", "bin Abdul Rahman").
2. Add a space between your first name and last name.
3. Create a new variable called **salutation**, and give it the value for yourself (e.g. "Miss", "Mister"). Include it in **fullName**.
4. The **selfIntroduction** variable is a String that comprises of your full name and your age *interpolated* together. (Don't worry if that word doesn't make sense.) Can you change it so that it's a full sentence, e.g. "My name is Yuan Yuchuan, and my age is 45."?
*/

var firstName = "Yinjie"
var lastName = "Soon"
var fullName = firstName + lastName
var age = 0 // change this!

var selfIntroduction = "\(fullName) \(age)"

/*:
## Part 2: Math & Operators
Now that you've made some variables, you can use Xcode as a calculator! Some notes:
* These are the *operators* you can use on each number: \+ is plus, \- is minus, \* is multiply, and \/ (watch out for the direction of the slash) is divide.
* There's one more, \%, called "mod". Can you figure out what it means? [Google](https://www.google.com.sg/search?q=mod+operator) is usually helpful.
* When working with integers, any output you get will be an integer too! That's why the **dividing** example gives 0. To get the expected output, you have to change the type of each to Double, by writing Double(num1) and Double(num2). See the **dividingAgain** example.
* As you know from math class, there's an order to the operations. Can you figure out what comes first in the **operationOrder** example

*/

var num1 = 5
var num2 = 10
var adding = num1 + num2
var subtracting = num1 - num2
var multiplying = num1 * num2
var dividing = num1 / num2 // wait... 0?!
var dividingAgain = Double(num1) / Double(num2) // this works!

// Can you figure out what comes first?
var operationOrder : Double = 5 + 10 * 2.5 / 10 - 1

// This is how it breaks down:
var firstOperation = 10 * 2.5
var secondOperation = firstOperation / 10
var thirdOperation = 5 + secondOperation
var fourhOperation = thirdOperation - 1

// TODO: Figure out what this % means!
var modExample1 = 10 % 5
var modExample2 = 10 % 2
var modExample3 = 10 % 9
var modExample4 = 10 % 4
var modExample5 = 5 % 2

/*:
### Execise 2: Some math
*/







