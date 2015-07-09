/*:
# Intro to Programming in Swift 
## Worksheet 1
Welcome to Swift! In this worksheet, you'll learn to type out some code to move a robot turtle to its destination. 

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 1**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()

/*:
## Exercise 1 
This is where you'll type your code. You can use two functions:

`turtle.moveForward()`

`turtle.turnRight()`

Type each instruction on a separate line. Once you're done, the turtle should restart. Your goal is to move the turtle to the yellow brick. 

You can't turn left, but you can make use of the *function* that we've written for you. To use it, call `turnLeft()` (no need for **turtle.** in front!).
*/
// This is a function that groups the three turtle.turnRight() calls together! You can use it with turnLeft().

func turnLeft() {
    turtle.turnRight()
    turtle.turnRight()
    turtle.turnRight()
}

turtle.moveForward()
turtle.moveForward()
turnLeft()

// Bonus: Can you make your turtle move to the goal with just one function call? In other words, instead of turtle.moveForward(), then turtle.moveForward(), etc., just have a function like moveToGoal().

//: No need to edit any code after this line. 

turtle.move()
