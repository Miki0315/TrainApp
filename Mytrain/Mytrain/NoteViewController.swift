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
    @IBOutlet weak var lineLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        paramLabel.text =  appDelegate.tableViewVal // Labelに値引き渡し用のプロパティから取得して設定する。（発車時刻）
        lineLabel.text = appDelegate.tableViewVal2 //路線のラベル
        //lineLabel.text = "区間"
        //lineLabel.text = appDelegate.tableViewVal3
        //lineLabel.text = appDelegate.tableViewVal4
        
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
