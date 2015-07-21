/*:
# Intro to Programming in Swift 
## Worksheet 1

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 4**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()

/*:
## Exercise 4
Your goal is to move the turtle to the yellow brick, using functions with loops.
*/

//: Write your functions here

// TODO: Currently, this moves forward by 4 steps, no matter what "n" is. Can you edit it so it moves forward by "n" steps?

func moveForwardBy(n : Int) {
    for _ in 1...4 {
        turtle.moveForward()
    }
}

// This is the turnLeft function, which uses a for loop to turn right.
func turnLeft() {
    for _ in 1...3 {
        turtle.turnRight()
    }
}

//: Change your movement code to use only `moveForwardBy(n)`, `turtle.turnRight()` and `turnLeft()`.

moveForwardBy(3)
turtle.turnRight()
moveForwardBy(2)
turnLeft()

//: No need to edit any code after this line. 

turtle.move()
