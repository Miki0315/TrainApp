//
//  NoteViewController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    @IBOutlet weak var paramLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        paramLabel.text =  appDelegate.tableViewVal // Labelに値引き渡し用のプロパティから取得して設定する。
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
