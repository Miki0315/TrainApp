//
//  YoutubeViewController.swift
//  Mytrain
//
//  Created by kojpkn on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

//
//  YoutubeViewController.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/21.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit

class YoutubeViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate = self
        let targetURL: NSURL = NSURL(string: "https://www.youtube.com/watch?v=etHDsUecb7U")!
        let request: NSURLRequest = NSURLRequest(URL: targetURL)
        myWebView.loadRequest(request)
        // Do any additional setup after loading the view.
    }
    
    
//    func webViewDidFinishLoad(webView: UIWebView) {
//        println("webViewDidFinishLoad")
//    }
//    
//    /*
//    Pageがloadされ始めた時、呼ばれるデリゲートメソッド.
//    */
//    func webViewDidStartLoad(webView: UIWebView) {
//        println("webViewDidStartLoad")
//    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
