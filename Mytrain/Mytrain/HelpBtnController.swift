//
//  HelpBtnController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

//import Cocoa
import UIKit

class HelpBtnController: UIViewController {
    
    @IBOutlet var Button : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func push(){
        var targetView: AnyObject =
            self.storyboard!.instantiateViewControllerWithIdentifier("movie")
            //self.presentViewController( targetView as UIViewController ,animated:true, completion:nil)
    }

}
