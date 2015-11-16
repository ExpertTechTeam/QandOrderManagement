//
//  ConfirmQueueViewController.swift
//  QandOrderManagement
//
//  Created by Pannray Samanphanchai on 11/15/2558 BE.
//  Copyright © 2558 Pannray Samanphanchai. All rights reserved.
//

import UIKit

class ConfirmQueueViewController: UIViewController, contact2Delegate {
    
    @IBOutlet weak var restaurantImage : UIImage!
    @IBOutlet weak var branchName : UILabel!
    @IBOutlet weak var branchLocation : UILabel!
    @IBOutlet weak var branchServiceTimeContact : UILabel!
    
    @IBOutlet weak var queueNo : UILabel!
    @IBOutlet weak var confirmCode : UILabel!
    
    @IBOutlet weak var bookingView : UIView!
    @IBOutlet weak var noOfPerson : UILabel!
    @IBOutlet weak var img1 : UIImageView!
    @IBOutlet weak var img2 : UIImageView!
    
    @IBOutlet weak var specialReq : UILabel!
    @IBOutlet weak var friendList : UITextView!
    
    @IBOutlet weak var viewBookingBtn : UIButton!
    
    var friendArray : [String] = []
    var queueModel : QueueModel = QueueModel()
    var bookingViewVisible : Int = 0
    var selectedBranch : RestaurantModel = RestaurantModel()
    
    let customFont = UIFont(name: "ravenna-serial-light-regular", size: 15.0)
    let subTitleFont = UIFont(name: "ravenna-serial-light-regular", size: 13.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.branchName!.text = selectedBranch.res_branch_name
        self.branchLocation!.text = selectedBranch.res_address
        self.branchServiceTimeContact!.text = "Open 10:00 - 21:30 "+"Tel. "+self.selectedBranch.res_contact
        
        self.queueNo.text = self.queueModel.queueNo
        self.confirmCode.text = String(self.queueModel.confirmCode)
        
        self.noOfPerson.text = self.queueModel.noOfPerson
        if(self.queueModel.babyFlag.boolValue){
            //True --> Display Baby Img
            print("has baby")
            var baby = UIImage(named: "baby.png")
            self.img1.image = baby
            
        }
        
        
        if(self.queueModel.wheelchairFlag.boolValue){
            print("has wheelchair")
            //True --> Display Wheelchair Img
            var wheelchair = UIImage(named: "wheelchair.png")
            if(self.queueModel.babyFlag.boolValue){
                //img 2
                self.img2.image = wheelchair
            }else{
                self.img1.image = wheelchair
            }
            
        }else{
            print("Blank")
        }
        
        
        
        self.specialReq.text = self.queueModel.specialRequest
        var tmpFriend = ""
        if (self.queueModel.friendList.count > 0){
            for i in 0..<self.queueModel.friendList.count {
                tmpFriend = tmpFriend + self.queueModel.friendList[i] + ", "
            }
            self.friendList.text = tmpFriend
        }else{
            self.friendList.text = "-"
        }
        
        self.view.addSubview(bookingView)
        
        bookingView.hidden = true
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewBookingInfo(){
        self.bookingViewVisible += 1
        if(self.bookingViewVisible % 2 == 1){
            //Show view
            print("Show")
            self.bookingView.hidden = false
//            self.viewBookingBtn.t
            self.viewBookingBtn.titleLabel?.text = "Hide Booking Information"
            
        }else{
            //Hide view
            print("Hide")
            self.bookingView.hidden = true
            self.viewBookingBtn.titleLabel?.text = "Show Booking Information"
        }
        
        
        print("Begin")
        
        
        print("End")
    }
    
    
    @IBAction func addFriendBtnTapped(){
        self.performSegueWithIdentifier("addfriend2", sender: self)
        
    }

    
    
    func backToConfirmPage(contactList:[String]){
        print("2")
        self.friendArray = contactList
        var friend : String = ""
        for i in 0..<contactList.count {
            friend = friend + contactList[i] + ", "
        }
        self.friendList.font = subTitleFont
        self.friendList.text = friend
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "addfriend2"){
            print("ADD FRIEND SEGUE")
            let controller = segue.destinationViewController as! ContactLis2tTableViewController
            controller.delegate = self
        }
        
        
    }
    
    
}
