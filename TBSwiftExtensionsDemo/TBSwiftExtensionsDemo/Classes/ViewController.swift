//
//  ViewController.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 23/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.convertLocalizables()
        self.gesturesExamples()
    }


    // MARK - Gestures

    func gesturesExamples() {
        // TapGesture
        let blockTapGesture = BlockTapGestureRecognizer(numberOfTapsRequired: 1, numberOfTouchesRequired: 1) { _ in
            print("tapDetected detected")
        }

        let longPressGesture = BlockLongPressGestureRecognizer(numberOfTapsRequired: 1, numberOfTouchesRequired: 1, minimumPressDuration: 0.5) { _ in
            print("longPress detected")
        }

        let panGesture = BlockPanGestureRecognizer(minimumNumberOfTouches: 1) { _ in
            print("pan detected")
        }

        let swipeDownGesture = BlockSwipeGestureRecognizer(numberOfTouchesRequired: 1, direction: .Down) { _ in
            print("swipe down detected")
        }

        let swipeUpGesture = BlockSwipeGestureRecognizer(numberOfTouchesRequired: 1, direction: .Up) { _ in
            print("swipe Up detected")
        }

        let swipeLeftGesture = BlockSwipeGestureRecognizer(numberOfTouchesRequired: 1, direction: .Left) { _ in
            print("swipe left detected")
        }
        
        let swipeRightGesture = BlockSwipeGestureRecognizer(numberOfTouchesRequired: 1, direction: .Right) { _ in
            print("swipe right detected")
        }

        let pinchGesture = BlockPinchGestureRecognizer { _ in
            print("pinch detected")
        }
        
        view.addGestureRecognizer(blockTapGesture)
        view.addGestureRecognizer(longPressGesture)
        view.addGestureRecognizer(panGesture)
        view.addGestureRecognizer(swipeDownGesture)
        view.addGestureRecognizer(swipeUpGesture)
        view.addGestureRecognizer(swipeLeftGesture)
        view.addGestureRecognizer(swipeRightGesture)
        view.addGestureRecognizer(pinchGesture)

    }
}

