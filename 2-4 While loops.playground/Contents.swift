/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to make functions that do basic operations using loops. Remember to turn on the *Assistant Editor* before you start.
*/

func printHeader(title: String){
    println("")
    println(title);
    println("------------")
    println("")
}



/*:
## Exercise 4A: Fibonacci sequence
The fibonacci sequence is defined as a sequence of numbers where every number, from the third number onwards, is the sum of the previous two numbers:

0 1 1 2 3 5 8 13...

Write a function, genFibonacci, that generates the first n fibonacci numbers

Hint: You need to store additional values in variables outside of the loop
*/
printHeader("Exercise 4A")
func genFibonacci(n: Int){
    
}
genFibonacci(200);

/*:
## Demo 1: While loops
While loops run until its condition evaluates to false.
*/

var i=0
while(i<20){
    print("\(i) ");
    i++
}
/*:
## Exercise 4B: Wow Squares
Using a while loop, write a function smallestSquare() that gets the smallest square number larger than a given x
*/
func smallestSquare(x: Int){
    
}
smallestSquare(1000);

/*:
## Exercise 4C: While-y Fibonacci
Using a while loop, write a function that gets the first fibonacci number larger than x.

*/
printHeader("Exercise 4B")
func getFirstFibonacci(x: Int){

}
getFirstFibonacci(10000);
