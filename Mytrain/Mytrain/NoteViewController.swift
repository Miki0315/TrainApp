//
//  NoteViewController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var paramLabel: UILabel!
    @IBOutlet weak var lineLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        //var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //paramLabel.text =  appDelegate.tableViewVal // Labelに値引き渡し用のプロパティから取得して設定する。（発車時刻）
        //lineLabel.text = appDelegate.tableViewVal2 //路線のラベル
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
    }
    
    //表示するセルの中身
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
            //cell.textLabel?.text = "\(indexPath.row)行目"
            var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            cell.textLabel?.text = appDelegate.tableViewVal //時間がcellに表示される
            var strArray:[String] = [appDelegate.tableViewVal, "路線："+appDelegate.tableViewVal2+"線","区間："+appDelegate.tableViewVal3+"から"+appDelegate.tableViewVal4+"まで"] //配列を生成
            var myTableView: UITableView!
            
        
            cell.textLabel!.text = "\(strArray[indexPath.row])"//配列を表示
            return cell
    }

    
    //選択されたときに行う処理　これは画面には表示されない
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("\(indexPath.row)行目を選択")
    }
    
    //ステータスバーを非表示にする
    override func prefersStatusBarHidden() -> Bool {
        return true
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
