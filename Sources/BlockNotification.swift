//
//  NotificationObserver.swift
//  TBSwiftExtension
//
//  Created by Tom Baranes on 14/11/15.
//  Copyright © 2015 Recisio. All rights reserved.
//

import Foundation

class BlockNotification {
    
    let name: String
    private var object: AnyObject?
    private let closure: ((NSNotification) -> Void)
    
    // MARK - Initializers
    
    init(name: String, closure: (NSNotification) -> ()) {
        self.name = name
        self.closure = closure
        self.start();
    }
    
    convenience init(name: String, object: AnyObject, closure: (NSNotification) -> ()) {
        self.init(name: name, closure: closure)
        self.object = object;
    }
    
    deinit {
        stop()
    }
    
    // MARK - 
    
    internal func start() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleNotification:", name: name, object: object)
    }
    
    internal func stop() {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    // MARK - Action
    
    dynamic func handleNotification(notification: NSNotification) {
        closure(notification)
    }
    
}