//
//  MyQTableViewController.swift
//  QandOrderManagement
//
//  Created by Pannray Samanphanchai on 11/17/2558 BE.
//  Copyright © 2558 Pannray Samanphanchai. All rights reserved.
//

import UIKit

class MyQTableViewController: UITableViewController {

    let headerFont = UIFont(name: "ravenna-serial-medium-regular", size: 15.0)
    let customFont = UIFont(name: "ravenna-serial-light-regular", size: 15.0)
    
    var activeQueue : [QueueModel] = []
    var tempQueue : [QueueModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        
        return 0
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        var headerLabel = ""
        if(section == 0){
            headerLabel = "Active Q"
        }else{
            headerLabel = "Temp Q"
        }
        
        let header:UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        header.textLabel!.text = headerLabel
        header.textLabel!.font = headerFont
        header.textLabel!.textColor = UIColor.whiteColor()
        header.textLabel!.textAlignment = NSTextAlignment.Left
        header.backgroundView?.backgroundColor = UIColor(red: 121/255, green: 183/255, blue: 224/255, alpha: 1.0)
        
        
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func initActiveQueue() -> [QueueModel] {
        var result : [QueueModel] = []
        
        var q1 = QueueModel()
        q1.queueNo = "A09"
        q1.babyFlag = true
        q1.wheelchairFlag = true
        q1.specialRequest = "Sofa Seat"
        q1.friendList = ["Ethan O.", "Gary P.", "Robert R."]
        q1.confirmCode = 49201
        result.append(q1)
        
        var q2 = QueueModel()
        q2.queueNo = "A015"
        q2.babyFlag = true
        q2.wheelchairFlag = false
        q2.specialRequest = "Bar Seat"
        q2.friendList = ["Johnathan E.", "Patty M.", "Paul R."]
        q2.confirmCode = 96018
        result.append(q2)
        
        return result
    }
    
    
    func initTempQueue() -> [QueueModel] {
        var result : [QueueModel] = []
        
        var q1 = QueueModel()
        q1.queueNo = "A010"
        q1.babyFlag = true
        q1.wheelchairFlag = true
        q1.specialRequest = "Sofa Seat"
        q1.friendList = ["Patricia A.", "Mark O.", "Paul R."]
        q1.confirmCode = 29456
        result.append(q1)
        
        return result
    }


}
