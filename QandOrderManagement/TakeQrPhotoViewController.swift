//
//  TakeQrPhotoViewController.swift
//  QandOrderManagement
//
//  Created by Pannray Samanphanchai on 11/25/2558 BE.
//  Copyright © 2558 Pannray Samanphanchai. All rights reserved.
//

import UIKit

class TakeQrPhotoViewController: UIViewController {
    
    var queueModel : QueueModel = QueueModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.queueModel.queueNo = "B08"
        self.queueModel.noOfPerson = "6"
        self.queueModel.confirmCode = 59103
        self.queueModel.babyFlag = false
        self.queueModel.wheelchairFlag = false
        self.queueModel.status = "Active"
        self.queueModel.restaurant = "Swensen"
        self.queueModel.specialRequest = "Sofa Seat"
        self.queueModel.branchModel = RestaurantController().getRestaurantById(10008)
        self.queueModel.friendList = ["Clerk P.", "Mark W.", "Pual R."]
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedQR(){
        self.performSegueWithIdentifier("displayQueue", sender: self)
    }
    @IBAction func exitFromMainPage2(segue:UIStoryboardSegue){
        print("Exit to main page")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "displayQueue"){
            let controller = segue.destinationViewController as! ConfirmQueueViewController
            controller.hidebackitem = false
            controller.queueModel = self.queueModel
            controller.friendArray = self.queueModel.friendList
            controller.selectedBranch = self.queueModel.branchModel
            controller.selectedRestaurant = self.queueModel.restaurant
            
        }
        
    }
    

}
