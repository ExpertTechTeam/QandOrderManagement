//
//  SignUpViewController.swift
//  QandOrder
//
//  Created by Warunee Phattharakijwanich on 11/10/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var txtFirstname: UITextField!
    @IBOutlet weak var txtLastname: UITextField!
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var firstName : String = ""
    var lastName : String = ""
    var mobileNo : String = ""
    var email : String = ""
    var password : String = ""
    var common:CommonController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Initial Notification for back to the first page
        common = CommonController()
        common.initializeTab5(self)
    }
    override func viewDidDisappear(animated: Bool) {
        common.deinitNotification()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpNewAccount(sender: AnyObject) {
        firstName = txtFirstname.text!
        lastName = txtLastname.text!
        mobileNo = txtMobileNo.text!
        email = txtEmail.text!
        password = txtPassword.text!
        
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
