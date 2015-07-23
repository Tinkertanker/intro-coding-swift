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
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 0
    var timer : NSTimer?
    var timeElapsed : Double = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        congratsLabel.hidden = true
        resetButton.hidden = true
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
    }
    
    func updateCounter() {
        timeElapsed = timeElapsed + 0.1
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
            congratsLabel.text = "You took \(timeElapsed) seconds!"
            resetButton.hidden = false
        }
        
        
    }

    @IBAction func reset(sender: AnyObject) {
        timeElapsed = 0;
        resetButton.hidden = true
        counter = 0;
        counterLabel.text = "0"
        clickButton.enabled = true
        clickButton.setTitle("CLICK ME!!!!",forState:UIControlState.Normal)
        congratsLabel.hidden = true
    }
}

