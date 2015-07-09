/*:
# Intro to Programming in Swift 
## Worksheet 1

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 3**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()

/*:
## Exercise 3
Your goal is to move the turtle to the yellow brick, using functions with loops.
*/

//: Write your functions here

// This one is filled in for you... moves the turtle forward by three steps, using a for loop.

func moveForwardByThree() {
    for _ in 1...3 {
        turtle.moveForward()
    }
}

// TODO: use the same method as above to move forward by 10! You can copy the code from above, and change one number.
func moveForwardByTen() {

}

// TODO: use for loops to make the turtle turn left, using the turtle.turnRight() function.
func turnLeft() {
    
}

//: No need to write movement code this time! We'll just call the following functions. However, you need to have implemented them above.

moveForwardByThree()
turtle.turnRight()
moveForwardByTen()
turnLeft()
moveForwardByThree()

//: No need to edit any code after this line. 

turtle.move()
