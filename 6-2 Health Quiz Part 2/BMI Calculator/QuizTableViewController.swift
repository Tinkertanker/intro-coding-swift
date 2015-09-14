//
//  QuizTableViewController.swift
//  
//
//  Created by YJ Soon on 15/9/15.
//
//

import UIKit

class QuizTableViewController: UITableViewController {
    
    var data : NSArray?

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataPath = NSBundle.mainBundle().pathForResource("Quiz", ofType: "plist")
        data = NSArray(contentsOfFile: dataPath!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data!.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        let item : Dictionary = data!.objectAtIndex(indexPath.row) as! Dictionary<String, String>
        var question = item["question"]
        cell.textLabel!.text = question

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue" {
            let destination = segue.destinationViewController as? QuizViewController
            let row = tableView.indexPathForSelectedRow()?.row
            let item : Dictionary = data!.objectAtIndex(row!) as! Dictionary<String, String>
            var question = item["question"]
            destination!.question = question!
        }
    }
    
}
