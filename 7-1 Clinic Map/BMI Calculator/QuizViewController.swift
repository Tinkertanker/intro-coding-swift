//
//  QuizViewController.swift
//  BMI Calculator
//
//  Created by Yin Jie Soon on 13/8/15.
//  Copyright (c) 2015 Tinkercademy. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionText: SpringLabel!
    @IBOutlet weak var choice1: SpringButton!
    @IBOutlet weak var choice2: SpringButton!
    @IBOutlet weak var choice3: SpringButton!
    
    var question = String()
    var option1 = String()
    var option2 = String()
    var option3 = String()
    var answer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = question
        choice1.setTitle(option1, forState: UIControlState.Normal)
        choice2.setTitle(option2, forState: UIControlState.Normal)
        choice3.setTitle(option3, forState: UIControlState.Normal)
    }
    
    @IBAction func choice1Pressed(sender: AnyObject) {
        if (answer == "1") {
            choice1.animation = "pop" // correct animation
        } else {
            choice1.animation = "shake" // wrong animation
        }
        choice1.animate()
    }
    
    @IBAction func choice2Pressed(sender: AnyObject) {
        if (answer == "2") {
            choice1.animation = "pop" // correct animation
        } else {
            choice1.animation = "shake" // wrong animation
        }
        choice1.animate()
    }
    
    @IBAction func choice3Pressed(sender: AnyObject) {
        if (answer == "3") {
            choice1.animation = "pop" // correct animation
        } else {
            choice1.animation = "shake" // wrong animation
        }
        choice1.animate()
    }
    

}
