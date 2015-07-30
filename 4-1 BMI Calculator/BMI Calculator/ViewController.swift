//
//  ViewController.swift
//  BMI Calculator
//
//  Created by YJ Soon on 30/7/15.
//  Copyright (c) 2015 Tinkercademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var resultsField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsField.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(sender: AnyObject) {
        var weight = (weightField.text as NSString).floatValue
        var height = (heightField.text as NSString).floatValue
        
        var bmi = weight / (height * height);
        
        println("")
        println("The weight entered is \(weight)")
        println("The height entered is \(height)")
        println("The BMI calculated is \(bmi)")
        println("")
        
        if (height <= 0 || weight <= 0) {
            resultsField.text = "Input error! Please try again."
        } else {
            resultsField.text = "Your BMI is \(bmi)"
        }
        
        resultsField.hidden = false
        
        view.endEditing(true)
        
    }

}

