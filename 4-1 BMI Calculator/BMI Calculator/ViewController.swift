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

    @IBAction func popup(sender: AnyObject) {
        
        var weight = (weightField.text as NSString).floatValue
        var height = (heightField.text as NSString).floatValue
        var bmi = weight / (height * height);
        
        var popupTitle = "Alert"
        var popupMessage = "Message"
        var popupAction = "Click"
        
        if (bmi < 18.5) {
            // underweight! change the text to tell the user.
        } else if (bmi < 25) {
            // normal weight
        } else {
            // overweight.
        }

        var alert = UIAlertController(title: popupTitle, message: popupMessage, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: popupAction, style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    

}

