//
//  AppDelegate.swift
//  Mytrain
//
//  Created by 清水美希 on 2015/06/18.
//  Copyright (c) 2015年 Miki Shimizu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    private var tableviewVal: String = ""
    private var tableviewVal2: String = ""
    private var tableviewVal3: String = ""
    private var tableviewVal4: String = ""
    var tableViewVal: String {
        get {
            return tableviewVal // tableviewに表示する値を返す。
        }
        set {
            tableviewVal = newValue // datepickerの値をここに設定する。
        }
    }
    var tableViewVal2: String {
        get {
            return tableviewVal2 // tableviewに表示する値を返す。
        }
        set {
            tableviewVal2 = newValue // tf1の値をここに設定する。
        }
    }
    var tableViewVal3: String {
        get {
            return tableviewVal3 // tableviewに表示する値を返す。
        }
        set {
            tableviewVal3 = newValue // tf2の値をここに設定する。
        }
    }
    var tableViewVal4: String {
        get {
            return tableviewVal4 // tableviewに表示する値を返す。
        }
        set {
            tableviewVal4 = newValue // tf3の値をここに設定する。
        }
    }
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

