//
//  CurrentQueueViewController.swift
//  QandOrderManagement
//
//  Created by Pannray Samanphanchai on 11/8/2558 BE.
//  Copyright © 2558 Pannray Samanphanchai. All rights reserved.
//

import UIKit

class CurrentQueueViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var restaurantImage : UIImage!
    @IBOutlet weak var branchName : UILabel!
    @IBOutlet weak var branchLocation : UILabel!
    @IBOutlet weak var branchServiceTimeContact : UILabel!
    @IBOutlet weak var tbvCurrentQueue : UITableView!
    
    
    var selectedRestaurant : String = ""
    var selectedBranch : RestaurantModel = RestaurantModel()
    var tableTypeArray : [String] = ["1-4", "5-8", "9-12", "13-20"]
    var defaultWaitingQ : [Int] = [7,4,0,0]
    var recommendWaitingQ : [Int] = [18,6,1,0]
    var totalWaitingQ : Int = 0
    
    let navigationFont = UIFont(name: "ravenna-serial-light-regular", size: 20.0)
    let customFont = UIFont(name: "ravenna-serial-light-regular", size: 15.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup Nav
        self.navigationItem.title = self.selectedRestaurant
        self.navigationController?.navigationBar.barTintColor = UIColor(red: (41/255.0), green: (108/255.0), blue: (163/255.0), alpha: 1.0)
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: navigationFont!, NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        var continueItem = UIBarButtonItem(title: "Continue", style: .Plain, target: self, action: "continueBtnTapped")
        
        if let font = customFont {
            continueItem.setTitleTextAttributes([NSFontAttributeName: font], forState: UIControlState.Normal)}
        continueItem.tintColor = UIColor.whiteColor()
        self.navigationItem.rightBarButtonItem = continueItem
        
        self.branchName!.text = self.selectedBranch.res_branch_name
        self.branchLocation!.text = self.selectedBranch.res_address
        self.branchServiceTimeContact!.text = "Open 10:00 - 21:30 "+"Tel. "+self.selectedBranch.res_contact
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func continueBtnTapped(){
        print("Total Queue : \(self.totalWaitingQ)")
//        self.performSegueWithIdentifier("recommendOther", sender: self)
//        if(self.totalWaitingQ > MyVariables.minimumWaitingQAlert){
//            //display recommend alert
//            print("Alert Popup")
//            self.performSegueWithIdentifier("recommendOther", sender: self)
//            
//        }else{
            self.performSegueWithIdentifier("reserveQueue", sender: self)
//        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell1") as! CurrentQueueTableViewCell!
        
        cell.tableType.text = self.tableTypeArray[indexPath.row]
        if(self.selectedBranch.res_branch_name.containsString("Central World Plaza")){
            //Assign RecommendWaitingQ
            cell.waitingQueue.text = String(self.recommendWaitingQ[indexPath.row])
            self.totalWaitingQ = self.totalWaitingQ + self.recommendWaitingQ[indexPath.row]
            
        }else{
            //Assign WaitingQ
            cell.waitingQueue.text = String(self.defaultWaitingQ[indexPath.row])
            self.totalWaitingQ = self.totalWaitingQ + self.defaultWaitingQ[indexPath.row]
            
        }
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "reserveQueue"){
            let reserveQueueViewController = segue.destinationViewController as! ReserveQueueViewController
            reserveQueueViewController.selectedBranch = self.selectedBranch
            reserveQueueViewController.selectedRestaurant = self.selectedRestaurant
        }else if(segue.identifier == "recommendOther"){
            let recommendViewController = segue.destinationViewController as! RecommendViewController
            recommendViewController.msg = "Message Test"
            
        }
        
    }
    
}
