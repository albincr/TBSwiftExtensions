//
//  UIScreenExtension.swift
//  TBSwiftExtensionsDemo
//
//  Created by Tom Baranes on 24/11/15.
//  Copyright © 2015 Tom Baranes. All rights reserved.
//

#if os(iOS)
    
import UIKit

extension UIScreen {

    public static func screenOrientation() -> UIInterfaceOrientation {
        return UIApplication.sharedApplication().statusBarOrientation
    }
    
    public static func screenSize() -> CGSize {
        return CGSizeMake(screenWidth, screenHeight)
    }

    public static var screenWidth: CGFloat {
        return UIInterfaceOrientationIsPortrait(screenOrientation()) ? UIScreen.mainScreen().bounds.size.width : UIScreen.mainScreen().bounds.size.height
    }
    
    public static var screenHeight: CGFloat {
        return UIInterfaceOrientationIsPortrait(screenOrientation()) ? UIScreen.mainScreen().bounds.size.height : UIScreen.mainScreen().bounds.size.width
    }
    
    public static var screenStatusBarHeight: CGFloat {
        return UIApplication.sharedApplication().statusBarFrame.height
    }
    
    public static var screenHeightWithoutStatusBar: CGFloat {
        return UIInterfaceOrientationIsPortrait(screenOrientation()) ? UIScreen.mainScreen().bounds.size.height - screenStatusBarHeight :
            UIScreen.mainScreen().bounds.size.width - screenStatusBarHeight
    }
    
}

#endif