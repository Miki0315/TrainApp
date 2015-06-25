//
//  FinishViewController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/25.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit
import Social
class FinishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnTwitter(sender: AnyObject){
        var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        twitterVC.setInitialText("今日は満員電車じゃなかったよ(^o^)やったー！！！！！")
        presentViewController(twitterVC, animated: true, completion: nil)
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
