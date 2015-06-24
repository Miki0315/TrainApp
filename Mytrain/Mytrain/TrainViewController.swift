//
//  TrainViewController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit

class TrainViewController: UIViewController, UIPickerViewDelegate, UIScrollViewDelegate, UITextFieldDelegate {
    @IBOutlet var myDatePicker: UIDatePicker!
    @IBOutlet var myLabel: UILabel!//発車時刻を表示
    @IBOutlet var tf1: UITextField!//路線を入力するテキストフィールド
    @IBOutlet var tf2: UITextField!//区間を入力するテキストフィールド
    @IBOutlet var tf3: UITextField!//区間を入力するテキストフィールド
    var time: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePicker.backgroundColor = UIColor.whiteColor()
        myDatePicker.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
        // Delegateを設定する.
        time = ""
        tf1.delegate = self
        tf2.delegate = self
        tf3.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func onDidChangeDate(sender: UIDatePicker){
        
        // フォーマットを生成.
        let myDateFormatter: NSDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm"
        
        // 日付をフォーマットに則って取得.
        let mySelectedDate: NSString = myDateFormatter.stringFromDate(sender.date)
        time = mySelectedDate as String
        myLabel.text = "発車時刻：\(time)"
    }
    
    @IBAction func Next(){
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {//returnを押すとキーボードを閉じる
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        tf3.resignFirstResponder()
        
        
        return true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated) //エフェクト関係のパラメタだと思うが、今回は使用しないので、基底クラスを呼び出して、終わり。
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateオブジェクトの呼び出し。as ◯◯はSwiftのキャスト表現
        appDelegate.tableViewVal = "発車時刻：\(time)" // datepickerの値を取得し、値引き渡し用のプロパティにセット
        appDelegate.tableViewVal2 = tf1.text// tf1の値を取得し、値引き渡し用のプロパティにセット
        appDelegate.tableViewVal3 = tf2.text
        appDelegate.tableViewVal4 = tf3.text
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
//        var secondViewController:NoteViewController = segue.destinationViewController as NoteViewController
//        NoteViewController.param = self.tf1.text
//    }

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
