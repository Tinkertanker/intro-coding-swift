/*:
# Intro to Programming in Swift 
## Worksheet 1

Before you start, bring up the *Assistant Editor* in Xcode. To do this, click on the *View* menu, then *Assistant Editor*, then *Show Assistant Editor*. This will bring up a panel on the right.

Skip ahead to the section labelled **Exercise 5**.
*/

import SpriteKit
import XCPlayground
import Cocoa
var turtle: RTurtle = RTurtle();
turtle.start()

/*:
## Exercise 5
Can you move the turtle to the goal by filling in this function and editing the for loop?
*/

func movePattern() {
    turtle.moveForward()
    turtle.turnRight()
}

for _ in 1...2 {
    movePattern()
}


//: No need to edit any code after this line. 

turtle.move()
