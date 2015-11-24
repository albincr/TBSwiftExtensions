//
//  BlockPanGestureRecognizer.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import UIKit

class BlockPanGestureRecognizer: UIPanGestureRecognizer {
    
    private var panAction: ((UIPanGestureRecognizer) -> Void)?
    
    internal convenience init (minimumNumberOfTouches: Int = 1, panAction: ((UIPanGestureRecognizer) -> Void)?) {
        self.init()
        self.minimumNumberOfTouches = minimumNumberOfTouches
        self.panAction = panAction
        self.addTarget(self, action: "handlePan:")
    }
    
    func handlePan(pan: UIPanGestureRecognizer) {
        panAction?(pan)
    }
    
}
