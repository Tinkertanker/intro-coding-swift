//
//  TipsViewController.swift
//  BMI Calculator
//
//  Created by Yin Jie Soon on 3/8/15.
//  Copyright (c) 2015 Tinkercademy. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var currentTip = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Drink coffee to have a better nap"
        contentLabel.text = "Why does this work? A 20-minute nap ends just as the caffeine kicks in and clears the brain of a molecule called adenosine, maximizing alertness."
        imageView.image = UIImage(named:"coffee.jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextTip(sender: AnyObject) {
        currentTip++
        hideTip()
    }
    
    // This function hides everything using an animation, with a delay of 0.5 seconds.
    // When the hiding is completed, it runs self.showTip(), which is the next function
    func hideTip() {
        UIView.animateWithDuration(0.5,
            animations: {
                self.titleLabel.alpha = 0
                self.contentLabel.alpha = 0
                self.imageView.alpha = 0
            },
            completion: { finished in
                self.showTip()
            }
        )
    }
    
    // This function runs after the animation in hideTip() is done. 
    // We'll first set the label and images, then re-animate them back to be visible.
    
    func showTip() {
        
        if (currentTip == 1) {
            titleLabel.text = "For healthy teeth, don't brush after eating"
            contentLabel.text = "Don't brush your teeth immediately after meals and drinks, especially if they were acidic. Wait 30 to 60 minutes before brushing."
            imageView.image = UIImage(named:"teeth.jpg")
        } else if (currentTip == 2) {
            
        }
        
        UIView.animateWithDuration(0.5,
            animations: {
                self.titleLabel.alpha = 1
                self.contentLabel.alpha = 1
                self.imageView.alpha = 1
        })
    }


}
