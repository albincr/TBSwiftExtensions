//
//  BlockTapGesture.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

#if os(iOS)
    
import UIKit

class BlockTapGestureRecognizer: UITapGestureRecognizer {
    
    private var tapAction: ((UITapGestureRecognizer) -> Void)?
    
    internal convenience init (numberOfTapsRequired: Int = 1, numberOfTouchesRequired: Int = 1, tapAction: ((UITapGestureRecognizer) -> Void)?) {
        self.init()
        self.numberOfTapsRequired = numberOfTapsRequired
        self.numberOfTouchesRequired = numberOfTouchesRequired
        self.tapAction = tapAction
        self.addTarget(self, action: "handleTap:")
    }
    
    func handleTap(tap: UITapGestureRecognizer) {
        tapAction?(tap)
    }
    
}

#endif