//
//  NotificationsViewController.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func notificationExample() {
        print("NotificationProxy examples:")
        
        print("1 - Registering")
        let notification = NotificationProxy(name: "aNotificationExample") { notification -> () in
            print("notification received: \(notification.object)")
        }
        notification.start()
        
        print("2 - Post a notification")
        NSNotificationCenter().postNotificationName("aNotificationExample", object: "hello world")
        print("3 - Remove observer")
        notification.stop()
        print("4 - Post a notification again")
        NSNotificationCenter().postNotificationName("aNotificationExample", object: "hello world")
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
