//
//  ViewController.swift
//  Clicker
//
//  Created by Yin Jie Soon on 16/7/15.
//  Copyright (c) 2015 Tinkercademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        congratsLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        counter = counter + 1
        counterLabel.text = "You pressed \(counter) times!"
        
        if (counter > 5) {
            congratsLabel.hidden = false
            congratsLabel.text = "Keep going!"
        }
        
        if (counter > 10) {
            clickButton.enabled = false
            
            clickButton.setTitle("Finished", forState:UIControlState.Normal)
            
            
            congratsLabel.text = "You're done!!"
        }
        
        
    }

}

