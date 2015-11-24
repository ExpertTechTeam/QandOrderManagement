//
//  PromotionMainTableViewController.swift
//  Queue
//
//  Created by Kewalin Sakawattananon on 11/9/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit

class PromotionMainTableViewController: UITableViewController {
    var promotionArray:[PromotionModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sizzler Promotion"
        promotionArray = PromotionController().getPromotionByResName("Sizzler")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return promotionArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let cell = tableView.dequeueReusableCellWithIdentifier("promotionCell", forIndexPath: indexPath) as! PromotionMainTableViewCell
        cell.txtPromotionInfo.text = promotionArray[row].pro_info
        cell.txtPromotionInfo.font =  UIFont(name: "ravenna-serial-light-regular", size: 13)
        cell.lblPromotionDate.text = "\(promotionArray[row].pro_start_date) - \(promotionArray[row].pro_end_date)"
        cell.imgPromotionMain.image = UIImage(named: promotionArray[row].pro_pic_banner)
        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.min
    }

    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 190
    }

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let selectedPath = self.tableView.indexPathForSelectedRow!
        let promotionDetailImageViewController = segue.destinationViewController as! PromotionDetailImageViewController
        promotionDetailImageViewController.selectedPromotion = promotionArray[selectedPath.row]
        
    }
    

}
