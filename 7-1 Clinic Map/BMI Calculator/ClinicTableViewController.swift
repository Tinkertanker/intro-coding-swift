//
//  ClinicTableViewController.swift
//  
//
//  Created by Yin Jie Soon on 17/9/15.
//
//

import UIKit

class ClinicTableViewController: UITableViewController {

    var selectedLocation = String()

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = tableView.cellForRowAtIndexPath(indexPath)
        selectedLocation = cell!.textLabel!.text!
        self.performSegueWithIdentifier("loadMap", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "loadMap") {
            var dest = segue.destinationViewController as! MapViewController
            dest.locationString = selectedLocation
        }
    }
    
}
