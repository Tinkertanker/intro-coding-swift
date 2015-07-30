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
    }

}

