//
//  RecommendViewController.swift
//  QandOrderManagement
//
//  Created by Pannray Samanphanchai on 11/23/2558 BE.
//  Copyright © 2558 Pannray Samanphanchai. All rights reserved.
//

import UIKit

class RecommendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{//, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var msgLabel : UILabel!
    @IBOutlet weak var tbvRecommend : UITableView!
    
    var msg : String = ""
    
    var recommendArray : [String] = ["Siam Center", "MBK Center"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        // popover settings
        self.modalPresentationStyle = .FormSheet
//        self.popoverPresentationController!.delegate = self
        self.view.frame.size = CGSizeMake(250, 300)
        self.view.backgroundColor = UIColor.blueColor()
//        self.preferredContentSize = CGSizeMake(100, 200)
        */
        self.msgLabel.text = msg
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell1") as UITableViewCell!
        cell.textLabel?.text = self.recommendArray[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
