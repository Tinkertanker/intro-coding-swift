/*:
# Intro to Programming in Swift 
## Worksheet 0

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

// TODO: use the same method as above to make the turtle turn right.
func turnLeft() {
    turtle.turnRight()
}

// BONUS: can you make something that moves forward by "n"? See the other BONUS section below to test how this will work. Hint: copy the for loop from the above, and change it such that it loops n times, instead of 3 or 10.

func moveForwardByN(n : Int) {
    
}

//: No need to write movement code this time! We'll just call the following functions. However, you need to have implemented them above.

moveForwardByThree()
// we'll use your turn left function to turn right, by calling it 3 times
for _ in 1...3 {
    turnLeft()
}
moveForwardByTen()

// BONUS: If you complete the bonus above, your turtle should go back to the starting point. Otherwise, it'll just spin in place a few times.

turnLeft()
turnLeft()
moveForwardByN(10)
turnLeft()
moveForwardByN(3)

//: No need to edit any code after this line. 

turtle.move()
