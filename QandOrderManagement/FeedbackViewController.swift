//
//  FeedbackViewController.swift
//  QandOrder
//
//  Created by Warunee Phattharakijwanich on 11/8/2558 BE.
//  Copyright © 2558 IBM. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {

    @IBOutlet weak var txtSuggestion: UITextView!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var ratingFood: RatingControl!
    @IBOutlet weak var ratingService: RatingControl!
    @IBOutlet weak var ratingAtmosphere: RatingControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Setup Navigation
        self.navigationController?.navigationBar.barTintColor = UIColor(red: (41/255.0), green: (108/255.0), blue: (163/255.0), alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "ravenna-serial-medium-regular", size: 20)!, NSForegroundColorAttributeName: UIColor.whiteColor()]
        //Setup Barbutton Item
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        let customFont = UIFont(name: "ravenna-serial-medium-regular", size: 13.0)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: customFont!], forState: UIControlState.Normal)
        //Setup default rating
        self.ratingControl.rating = 4
        self.ratingFood.rating = 4
        self.ratingService.rating = 4
        self.ratingAtmosphere.rating = 4
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitFeedbackMethod(sender: AnyObject) {
        
        
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
