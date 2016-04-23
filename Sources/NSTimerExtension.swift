//
//  NSTimerExtension.swift
//  Demo
//
//  Created by Tom Baranes on 23/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import Foundation

extension NSTimer {
    
    public static func every(seconds seconds: NSTimeInterval, handler: NSTimer! -> Void) -> NSTimer {
        let fireDate = CFAbsoluteTimeGetCurrent()
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, seconds, 0, 0, handler)
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, kCFRunLoopCommonModes)
        return timer
    }
    
    public static func after(seconds seconds: Double, after: () -> ()) {
        runThisAfterDelay(seconds: seconds, queue: dispatch_get_main_queue(), after: after)
    }
    
    public static func runThisAfterDelay(seconds seconds: Double, queue: dispatch_queue_t, after: ()->()) {
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
        dispatch_after(time, queue, after)
    }
    
}
