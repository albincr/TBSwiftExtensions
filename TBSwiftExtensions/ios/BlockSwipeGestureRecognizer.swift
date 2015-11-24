//
//  BlockSwipe.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import UIKit

class BlockSwipeGestureRecognizer: UISwipeGestureRecognizer {
    
    private var swipeAction: ((UISwipeGestureRecognizer) -> Void)?
    
    internal convenience init (numberOfTouchesRequired: Int = 1,  swipeAction: ((UISwipeGestureRecognizer) -> Void)?) {
        self.init()
        self.numberOfTouchesRequired = numberOfTouchesRequired
        self.swipeAction = swipeAction
        self.addTarget(self, action: "handleSwipe:")
    }
    
    internal convenience init (numberOfTouchesRequired: Int = 1, direction: UISwipeGestureRecognizerDirection,  swipeAction: ((UISwipeGestureRecognizer) -> Void)?) {
        self.init()
        self.numberOfTouchesRequired = numberOfTouchesRequired
        self.direction = direction
        self.swipeAction = swipeAction
        self.addTarget(self, action: "handleSwipe:")
    }
    
    func handleSwipe(swipe: UISwipeGestureRecognizer) {
        swipeAction?(swipe)
    }
    
}
