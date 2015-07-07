/*:
# Intro to Programming in Swift 
## Worksheet 0
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

Type each instruction on a separate line. Once you're done, the turtle should restart. Your goal is to move the turtle to the yellow brick. (You can't turn left!)
*/

turtle.moveForward()
turtle.turnRight()

//: No need to edit any code after this line. 

turtle.move()
