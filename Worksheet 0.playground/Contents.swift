//: Playground - noun: a place where people can play

import rTurtles
import XCPlayground

let maze = [
    /*Start*/
    [0,1,0,0,0,0,0,1,1,1,1,1,0,0,0],//bottom right
    [0,1,0,1,1,1,1,1,0,0,0,0,1,0,0],
    [0,1,0,1,0,0,0,1,0,1,1,1,1,0,0], // 0 denotes space, 1 denotes wall
    [0,1,1,1,0,1,1,1,0,1,1,1,1,1,0], // 2 denotes pickup
    [0,0,0,0,0,1,0,0,0,0,0,0,0,3,0], // 3 denotes goal
    [1,1,1,1,0,1,1,1,1,0,1,1,1,1,0],
    [0,0,0,1,0,0,0,0,0,0,1,0,0,0,0],
    [0,0,0,1,1,1,1,0,1,1,1,0,0,0,0],
    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],//top right
]

var turtle: RTurtle = RTurtle();

XCPShowView("Live View",turtle.start(maze))
turtle.moveForward()
turtle.moveForward()
turtle.moveForward()
turtle.turnRight()

turtle.move()
