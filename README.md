#TBSwiftExtensions

[![CI Status](https://travis-ci.org/tbaranes/TBSwiftExtensions.svg)](https://travis-ci.org/tbaranes/TBSwiftExtensions)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/TBSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/TBSwiftExtensions.svg)
[![Platform](https://img.shields.io/cocoapods/p/TBSwiftExtensions.svg?style=flat)](http://cocoadocs.org/docsets/TBSwiftExtensions)
[![License](https://img.shields.io/cocoapods/l/TBSwiftExtensions.svg?style=flat)](http://cocoapods.org/pods/TBSwiftExtensions)

TBSwiftExtensions is a delightful iOS, OSX and tvOS library.

The goal of this library is to provide useful extensions / helpers that can be used anywhere quickly and easily in order to reduce the code used for a same task. 


#Installation

- Swift 2 or later
- iOS 8.0 or later
- OSX 10.10 or later
- tvOS 9.0 or later

###Manually (iOS 7+)

Copy the TBSwiftExtensions folder into your Xcode project. (Make sure you add the files to your target(s))

###CocoaPods 0.36.0 or later (iOS 8+)


Add `pod TBSwiftExtensions` to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'TBSwiftExtensions'
```

###Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `TBSwiftExtensions` by adding the proper description to your `Package.swift` file:

```
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/tbaranes/TBSwiftExtensions.git", majorVersion: 0)
    ]
)
```

#Usage

Within this repo you'll find the examples for iOS, OSX, and tvOS using each extensions / helpers from the library.

### Array extensions (iOS, OSX, tvOS)

**Remove an object**

```
var array = [1, 2, 3]
var isObjectRemoved = array.removeObject(2)
print(isObjectRemoved) // true
isObjectRemoved = array.removeObject(5) 
print(isObjectRemoved) // false
```

### Dictionary extensions (iOS, OSX, tvOS)

**Merge several dictionaries**

```
let dic1 = ["one": 1, "two": 2]
let dic2 = ["three": 3, "four": 4]
var finalDic: Dictionary<String, Int> = [:]
finalDic.merge(dic1, dic2) 
print(finalDic) // ["one": 1, "two": 2, "three": 3, "four": 4]
```

### NSObject extension (iOS, OSX, tvOS)

**Get the class name of a `NSObject`**

```
let vc = UIViewController()
print(vc.className) // UIViewController
print(UIViewController.className) // UIViewController
```

### String extension (iOS, OSX, tvOS)

**Length**

```
var aString = "hello world"
print(aString.length) // 11
```

**Subscript usage**

```
var aString = "hello world"
print(aString[0]) // h
print(aString[2]) // l
print(aString[1...3]) // ell
```

**Contains**

```
let aString = "Hello world"
print (aString.contains("hello")) // true
print (aString.contains("hellooooo")) // false
```

**Capitalize the first letter**

```
var aString = "hello world"
aString = aString.capitalizeFirst 
print(aString)// Hello world
```

**Check if an email is valid**

```
var aString = "test@gmail.com"
print(aString.isEmail) // true
var aString = "test@"
print(aString.isEmail) // false
```

### NSUserDefaults extension (iOS, OSX, tvOS)

**Is key set in the user defaults**

```
NSUserDefaults.contains("aKey")
// OR
NSUserDefaults.standarUserDefaults.contains("aKey")
```

**Reset the defaults**

```
NSUserDefaults.standarUserDefaults.reset()
```

### NSBundle extension (iOS only)

**App version**

```
NSBundle.mainBundle().appVersion
NSBundle(URL: someURL)?.appVersion
```

**App build**

```
NSBundle(URL: someURL)?.appBuild
NSBundle.mainBundle().appBuild
```

### UIScreen extension (iOS only)

**Screen orientation**

```
if UIInterfaceOrientationIsPortrait(UIScreen.screenOrientation())) {
	// Portrait
} else {
	// Landscape
}
```

**Screen size:**

```
print(UIScreen.currentSize) // CGSize(375.0, 667.0) on iPhone6
print(UIScreen.screenWidth) // 375.0 on iPhone6
print(UIScreen.screenHeight) // 667.0 on iPhone6
print(UIScreen.screenHeightWithoutStatusBar) // 647.0 on iPhone6
```

**Status bar**

```
print(UIScreen.screenStatusBarHeight) // 20.0 on iPhone6
```

### UIImage extension (iOS only)

**Create an image from a color**

```
let image = UIImage.imageWithColor(UIColor.greenColor())
```
### UIView extensions (iOS only)

**Automates your localizables**

```
aView.convertLocalizables()
```

It will iterate on all the subviews of the view, and use the text / placeholder as key in `NSLocalizedString`.
By settings your localizable key in your xib / storyboard, all yours string will be automatically translated just by calling the above method.

**Instantiate view from nib programatically**

```
let myCustomView: CustomView = UIView.fromNib()
// or
let myCustomView = UIView.fromNib() as? CustomView
```

### NSMutableAttributedString (iOS, OSX, tvOS)

**Colorize each occurence**

```
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextcolor("hello world", color: UIColor.yellowColor(), forOccurences: "llo")

// OR

let attrStr: NSMutableAttributedString = NSMutableAttributedString(string: "Hello world")
attrStr.setTextColor(UIColor.yellowColor(), forOccurences: "llo")
```

**Colorize everything after an occurence**

```
let attrStr = NSMutableAttributedString.setTextcolor("Hello world", color: UIColor.yellowColor(), afterOcurrence: "llo")

// OR 
        
let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextColor(UIColor.yellowColor(), afterOcurrence: "llo")
```

**Strike each occurence**

```
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextStrike("Hello world", forOccurences: "llo")

// OR 
        
let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextStrike(forOccurences: "llo")
```

**Strike everything after an occurence**

```
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextStrike("Hello world", afterOcurrence: "llo")

// OR 
        
let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextStrike(afterOcurrence: "llo")
```

**Underline each occurence**

```
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextUnderline("Hello world", forOccurences: "llo")

// OR 
        
let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextUnderline(forOccurences: "llo")
```

**Underline everything after an occurence**

```
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextUnderline("Hello world", afterOcurrence: "llo")

// OR 
        
let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextUnderline(afterOcurrence: "llo")
```

### Occupiable (iOS, OSX, tvOS)

The following use cases works for String Array, Dictionary, and Set

**`isEmpty` / `isNotEmpty`**

*No optional types only*

```
var string = "Hello world"
print(string.isNotEmpty) // true
print(string.isEmpty) // false
```

**`isNilOrEmpty`**

*Optional types only*

```
let string: String? = ""
print(string.isNilOrEmpty) // true
```

### BlockNotification (iOS, OSX, tvOS)

```
// Register a notification
let notificationProxy = BlockNotification("aNotificationName": name) { notification in
	print("notification received: \(notification.object))
}

// Post a notification
NSNotificationCenter.defaultCenter().postNotificationName("aNotificationName", object: "Hello world")

```

###Gestures (iOS only)

**BlockTapGesturesRecognizers**:

```
let blockTapGesture = BlockTapGestureRecognizer() { _ in
   print("tap gesture detected")
}
view.addGestureRecognizer(blockTapGesture)

// OR 

let blockTapGesture = BlockTapGestureRecognizer(numberOfTapsRequired: 1, numberOfTouchesRequired: 1) { _ in
   print("tap gesture detected")
}
view.addGestureRecognizer(blockTapGesture)
```

**BlockLongPressGesturesRecognizers**:

```
let longPressGesture = BlockLongPressGestureRecognizer() { _ in
	print("long press gesture detected")
}
view.addGestureRecognizer(longPressGesture)

// OR

let longPressGesture = BlockLongPressGestureRecognizer(numberOfTapsRequired: 0, numberOfTouchesRequired: 1, minimumPressDuration: 0.5) { _ in
	print("long press gesture detected")
}
view.addGestureRecognizer(longPressGesture)
```

**BlockSwipeGesturesRecognizers**:

```
let swipeDownGesture = BlockSwipeGestureRecognizer(direction: .Down) { _ in
	print("swipe gesture detected")	
}
view.addGestureRecognizer(swipeDownGesture)

// OR

let swipeDownGesture = BlockSwipeGestureRecognizer(numberOfTouchesRequired: 1, direction: .Down) { _ in
	print("swipe gesture detected")
}
view.addGestureRecognizer(swipeDownGesture)
```

**BlockPanGesturesRecognizers**:

```
let panGesture = BlockPanGestureRecognizer() { _ in
	print("pan gesture detected"
}
view.addGestureRecognizer(panGesture)

// OR

let panGesture = BlockPanGestureRecognizer(minimumNumberOfTouches: 1) { _ in
	print("pan gesture detected"
}
view.addGestureRecognizer(panGesture)
```

**BlockPinchGesturesRecognizers**:

```
let pinchGesture = BlockPinchGestureRecognizer { _ in
	print("pinch gesture detected"
}
viewPinchGesture.addGestureRecognizer(pinchGesture)     
```

#Feedback

  * If you found a **bug**, open an **issue**
  * If you have a **feature request**, open an **issue**
  * If you want to **contribute**, submit a **pull request**

#Contact

* [@tbaranes](https://github.com/tbaranes/) on github

#License

TBSwiftExtensions is under the MIT license. See the [LICENSE](https://github.com/tbaranes/TBSwiftExtensions/blob/master/LICENSE) file for more information.