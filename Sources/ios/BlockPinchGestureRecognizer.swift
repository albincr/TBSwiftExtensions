//
//  BlockPinchGestureRecognizer.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

#if os(iOS)
    
import UIKit

class BlockPinchGestureRecognizer: UIPinchGestureRecognizer {
    
    private var pinchAction: ((UIPinchGestureRecognizer) -> Void)?
    
    internal convenience init (pinchAction: ((UIPinchGestureRecognizer) -> Void)?) {
        self.init()
        self.pinchAction = pinchAction
        self.addTarget(self, action: #selector(handlePinch(_:)))
    }
    
    func handlePinch(pinch: UIPinchGestureRecognizer) {
        pinchAction?(pinch)
    }
    
}

#endif