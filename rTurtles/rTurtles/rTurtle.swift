//
//  rTurtle.swift
//  rTurtles
//
//  Created by Zhang Hongyi on 1/7/15.
//  Copyright (c) 2015 Tinkertanker. All rights reserved.
//

import Foundation
import Cocoa
import SpriteKit
import AppKit

public class RTurtle : NSObject {
    var view:SKView = SKView(frame: CGRectMake(0,0,900,600))
    var scene:SKScene = SKScene(size: CGSizeMake(1024, 768))
    var turtle:SKSpriteNode = SKSpriteNode(imageNamed: "karel.png", normalMapped: false)
    let squareSize:Int=50
    var moveSequence = [SKAction]()
    var rotation:Double = 0.0
    var pickups=[SKSpriteNode]();
    var walls=[SKSpriteNode]();
    var xcord = 0;
    var ycord = 0;
    var dead = false;
    var score = 0;
    var won = true;
    var maze = [
        /*Start*/[0,1,0,0,0,0,0,1,1,1,1,1,0,0,0],//bottom right
        [0,1,0,1,1,1,1,1,0,0,0,0,1,0,0],
        [0,1,0,1,0,0,0,1,0,1,1,1,1,0,0], // 0 denotes space, 1 denotes wall
        [0,1,1,1,0,1,1,1,0,1,1,1,1,1,0], // 2 denotes pickup
        [0,0,0,0,0,1,0,0,0,0,0,0,0,3,0], // 3 denotes goal
        [1,1,1,1,0,1,1,1,1,0,1,1,1,1,0],
        [0,0,0,1,0,0,0,0,0,0,1,0,0,0,0],
        [0,0,0,1,1,1,1,0,1,1,1,0,0,0,0],
        [0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],//top right
    ]
    
    public func start(newMaze: [Array<Int>]? ) -> SKView{
        
        if(newMaze != nil) {
            maze = newMaze!;
        }
        
        scene.scaleMode = SKSceneScaleMode.AspectFit
        view.presentScene(scene)
        //    Create the scene and add it to the view
        turtle.size = CGSizeMake(CGFloat(squareSize),CGFloat(squareSize));
        turtle.position = positionAtGrid(0 , y:0)
        //        turtle.runAction(SKAction.repeatActionForever(SKAction.rotateByAngle(6, duration: 2)))
        //Generate terrain, assuming that it's rectangular
        var i=0;
        var j=0;
        for row in maze {
            
            j=0;
            for cell in row{
                if(cell != 0){
                    switch(cell){
                    case 1:
                        walls.append(SKSpriteNode(color: SKColor.redColor(), size: CGSizeMake(CGFloat(squareSize),CGFloat(squareSize))));
                        walls[walls.count-1].position=positionAtGrid(j, y: i)
                        scene.addChild(walls[walls.count-1])
                        break
                    case 2:
                        pickups.append(SKSpriteNode(imageNamed:"cherry.png",normalMapped:false));
                        pickups[pickups.count-1].size=CGSizeMake(CGFloat(squareSize),CGFloat(squareSize))
                        pickups[pickups.count-1].position=positionAtGrid(j, y: i)
                        scene.addChild(pickups[pickups.count-1])
                        break
                    case 3:
                        walls.append(SKSpriteNode(color: SKColor.yellowColor(), size: CGSizeMake(CGFloat(squareSize),CGFloat(squareSize))));
                        walls[walls.count-1].position=positionAtGrid(j, y: i)
                        scene.addChild(walls[walls.count-1])
                        break
                    default:
                        
                        break
                    }
                }
                j++;
            }
            i++;
        }
        //last so it's on top of everything else
        scene.addChild(turtle)
        return view
        
    }
    public func moveForward()->String{
        if(!dead){
            var dx=sin(rotation)*Double(squareSize)*Double(-1)
            var dy=cos(rotation)*Double(squareSize)
            xcord-=Int(sin(rotation))
            ycord+=Int(cos(rotation))
            moveSequence.append(SKAction.moveBy(CGVector(dx: dx, dy: dy), duration: 0.5))
        }
        return "Okay, I'll move forward next."
    }
    public func turnRight()->String{
        if(!dead){
            rotation=rotation-M_PI_2
            moveSequence.append(SKAction.rotateToAngle(CGFloat(rotation), duration: 0.5))
        }
        return "Okay, I'll turn right next."
    }
    public func turnLeft()->String{
        /*if(!dead){
        rotation=rotation+M_PI_2
        moveSequence.append(SKAction.rotateToAngle(CGFloat(rotation), duration: 0.5))
        }*/
        return "Sorry, I can't turn left."
    }
    //    public func moveRight(){
    //        moveSequence.append(SKAction.moveBy(CGVector(dx: squareSize, dy: 0), duration: 0.5))
    //    }
    public func move()->String{
        doMove(0)
        return "Moving~"
    }
    private func doMove(step:Int){
        if(step>=moveSequence.count){
            print("Done! I picked up ")
            print(score)
            print("  cherries!")
        }
        else{
            print(self.roundPosition(self.turtle.position))
            var action=self.moveSequence[step]
            turtle.runAction(action,completion:{
                var mazeValue = self.mazeValueAtPosition(self.turtle.position)
                if(mazeValue==1){
                    print("I died!")
                    self.dead=true
                    self.turtle.runAction(SKAction.repeatActionForever(SKAction.rotateByAngle(6,duration: 2)))
                }
                else if(mazeValue==2){
                    for pickup in self.pickups {
                        print(pickup.position)
                        print(self.roundPosition(self.turtle.position))
                        if(pickup.position==self.roundPosition(self.turtle.position)){
                            if(!pickup.hidden){
                                print(self.score)
                                self.score++
                                pickup.hidden=true;
                            }
                        }
                    }
                    self.doMove(step+1)
                }
                else if(mazeValue==3){
                    print("I'm done!")
                }
                else{
                    self.doMove(step+1)
                }
            })
        }
    }
    private func positionAtGrid(x:Int,y:Int)->CGPoint{
        return CGPointMake(CGFloat(60+x*squareSize),CGFloat(60+y*squareSize))
    }
    private func mazeValueAtPosition(position:CGPoint)->Int{
        var xcord=round((position.x-60)/CGFloat(squareSize))
        var ycord=round((position.y-60)/CGFloat(squareSize))
        return maze[Int(ycord)][Int(xcord)]
    }
    private func roundPosition(position:CGPoint) -> CGPoint{
        return CGPointMake(CGFloat(round(position.x*10)/10), CGFloat(round(position.y*10)/10))
    }
    public func getScore()->Int{
        return score;
    }
}
