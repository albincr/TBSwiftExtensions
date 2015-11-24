//
//  BlockLongPressGestureRecognizer.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import UIKit

class BlockLongPressGestureRecognizer: UILongPressGestureRecognizer {
    
    private var longPressAction: ((UILongPressGestureRecognizer) -> Void)?
    
    internal convenience init (numberOfTapsRequired: Int = 0, numberOfTouchesRequired: Int = 1, minimumPressDuration: CFTimeInterval = 0.5, longPress: ((UILongPressGestureRecognizer) -> Void)?) {
        self.init()
        self.numberOfTapsRequired = numberOfTapsRequired
        self.numberOfTouchesRequired = numberOfTouchesRequired
        self.minimumPressDuration = minimumPressDuration
        self.longPressAction = longPress
        self.addTarget(self, action: "handleLongPress:")
    }
    
    func handleLongPress(longPress: UILongPressGestureRecognizer) {
        longPressAction?(longPress)
    }
    
}
    