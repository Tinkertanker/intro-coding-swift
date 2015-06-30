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
*/

var welcome = "Hello world!"
var numberOfStudents = 15
var absentStudents = 5
var temperatureToday = 30.5

// We can change the temperature...
temperatureToday = 34.5 // so hot!
// Or the number of students.
numberOfStudents = 12 // 3 more have called in sick
absentStudents = 8 

var totalStudents = numberOfStudents + 1 // Wait, this is wrong. Change this to reflect the actual total

var hello = "Hello "
var world = "world!"
var helloWorld = hello + "potato" // That's not what we want to say! Change this to Hello world, using the 'world' variable

/*:
## Exercise 1
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


