//
//  ProfileViewController.swift
//  QandOrder
//
//  Created by Warunee Phattharakijwanich on 11/12/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var labelFirstname: UILabel!
    @IBOutlet weak var labelLastname: UILabel!
    @IBOutlet weak var labelMobileNo: UILabel!
    @IBOutlet weak var labelBirthdate: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    
    var firstname : String = ""
    var lastname : String = ""
    var mobileNo : String = ""
    var birthDate : String = ""
    var email : String = ""
    var password : String = ""
    
    let navigationFont = UIFont(name: "ravenna-serial-light-regular", size: 20.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
