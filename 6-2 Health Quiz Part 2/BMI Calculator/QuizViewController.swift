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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = question
    }
    
    @IBAction func choice1Pressed(sender: AnyObject) {
        choice1.animation = "pop"
        choice1.animate()
    }
    
    @IBAction func choice2Pressed(sender: AnyObject) {
        choice2.animation = "shake"
        choice2.animate()
        
    }
    
    @IBAction func choice3Pressed(sender: AnyObject) {
        choice3.animation = "shake"
        choice3.animate()
    }
    

}
