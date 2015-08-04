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
        titleLabel.text = "For healthy teeth, don't brush after eating"
        contentLabel.text = "Don't brush your teeth immediately after meals and drinks, especially if they were acidic. Wait 30 to 60 minutes before brushing."
        imageView.image = UIImage(named:"teeth.jpg")        
    }


}
