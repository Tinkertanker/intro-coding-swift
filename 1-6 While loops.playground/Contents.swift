/*:
# Intro to Programming in Swift 
## Worksheet 1
Welcome to Swift! In this worksheet, you'll learn to type out some code to move a robot turtle to its destination. 

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 6**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()
turtle.delay=0.1
/*:
## Exercise 6
Now we have two more functions:

`turtle.pickUp()` which will pick up whatever the turtle is walking over

`turtle.isFrontBlocked()` which will return true if there is a wall in front, and false otherwise.

*/
// This is a function that groups the three turtle.turnRight() calls together! You can use it with turnLeft().
func turnLeft() {
    turtle.turnRight()
    turtle.turnRight()
    turtle.turnRight()
}

while(!turtle.isFrontBlocked()){
    turtle.moveForward()
    turtle.pickUp()
}

turtle.turnRight()

while(!turtle.isFrontBlocked()){
    turtle.moveForward()
    turtle.pickUp()
}

turtle.turnRight();
turtle.moveForward()
// Bonus: Can you make your turtle move to the goal with just one function call? In other words, instead of turtle.moveForward(), then turtle.moveForward(), etc., just have a function like moveToGoal().
//Bonus bonus: Can you make it solve the maze for any given maze?

//: No need to edit any code after this line. 

turtle.move()
