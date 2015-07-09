/*:
# Intro to Programming in Swift 
## Worksheet 0

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 2**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()

/*:
## Exercise 2
Your goal is to move the turtle to the yellow brick, while only using your own custom functions.
*/

//: Write your functions here

// This one is filled in for you
func moveForwardByThree() {
    turtle.moveForward()
    turtle.moveForward()
    turtle.moveForward()
}

// TODO: fill in this one, between the curly braces { }. You can press enter for more space.
func moveForwardByFour() {
    
    
}

// TODO: fill in this function, between the curly braces { }. You can press enter for more space. The first two lines have been filled in for you.
func turnLeft() {
    turtle.turnRight()
    turtle.turnRight()
}


//: Write your movement code here. Remember, you can only use turnLeft, moveForwardByFour, and moveForwardByThree -- you *cannot* use `turtle.turnRight()`!

moveForwardByThree()
turnLeft()

// You need a few more commands to reach the goal! Add them above.
// Be careful not to move the turtle off the screen, or you'll get an error from Xcode.

//: No need to edit any code after this line. 

turtle.move()
