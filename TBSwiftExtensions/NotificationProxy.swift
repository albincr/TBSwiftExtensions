//
//  NotificationObserver.swift
//  TBSwiftExtension
//
//  Created by Tom Baranes on 14/11/15.
//  Copyright © 2015 Recisio. All rights reserved.
//

import Foundation

class NotificationProxy {
    
    var name: String;
    var object: AnyObject?;
    var closure: (NSNotification) -> ();
    
    // MARK - Initializers
    
    init(name: String, closure: (NSNotification) -> ()) {
        self.closure = closure;
        self.name = name;
        
        self.start();
    }
    
    convenience init(name: String, object: AnyObject, closure: (NSNotification) -> ()) {
        self.init(name: name, closure: closure);
        self.object = object;
    }
    
    deinit {
        stop()
    }
    
    // MARK -
    
    func start() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"handler:", name: name, object: object);
    }
    
    func stop() {
        NSNotificationCenter.defaultCenter().removeObserver(self);
    }
    
    private func handler(notification: NSNotification) {
        closure(notification);
    }
}