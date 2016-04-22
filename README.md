#TBSwiftExtensions

[![CI Status](https://travis-ci.org/tbaranes/TBSwiftExtensions.svg)](https://travis-ci.org/tbaranes/TBSwiftExtensions)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TBSwiftExtensions.svg)](https://img.shields.io/cocoapods/v/TBSwiftExtensions.svg)
[![Platform](https://img.shields.io/cocoapods/p/TBSwiftExtensions.svg?style=flat)](http://cocoadocs.org/docsets/TBSwiftExtensions)
[![License](https://img.shields.io/cocoapods/l/TBSwiftExtensions.svg?style=flat)](http://cocoapods.org/pods/TBSwiftExtensions)

TBSwiftExtensions making swift usage easier for iOS, OSX and tvOS library.

## Contents

Check out the repot to find examples for each extensions / utils from the library.

**Available for iOS, OS X, and tvOS:**

- [Array](#array-extensions)
- [Dictionary](#dictionary-extensions)
- [NSObject](#nsobject-extensions)
- [String](#string-extensions)
- [NSUserDefaults](#nsuserdefaults-extensions)
- [NSMutableAttributedString](#nsmutableattributedstring-extensions)
- [BlockNotification](#blocknotification)
- **Protocols:**
 - [Occupiable](#occupiable)

**Available for iOS:**

- [NSBundle](#nsbundle-extensions)
- [UIScreen](#uiscreen-extensions)
- [UIView](#uiview-extensions)
- [UIImage](#uiimage-extensions)
- **Gestures:**
 - [BlockTapGesturesRecognizers](#blocktapgesturesrecognizers)
 - [BlockLongPressGesturesRecognizers](#blocklongpressgesturesrecognizers)
 - [BlockSwipeGesturesRecognizers](#blockswipegesturesrecognizers)
 - [BlockPanGesturesRecognizers](#blockpangesturesrecognizers)
 - [BlockPinchGesturesRecognizers](#blockpinchgesturesrecognizers)

## Available for iOS, OS X, and tvOS

### Array extensions

**Remove an object**

```
var array = [1, 2, 3]
var isObjectRemoved = array.removeObject(2)
print(isObjectRemoved) // true
isObjectRemoved = array.removeObject(5)
print(isObjectRemoved) // false
```

### Dictionary extensions

**Merge several dictionaries**

```
let dic1 = ["one": 1, "two": 2]
let dic2 = ["three": 3, "four": 4]
var finalDic: Dictionary<String, Int> = [:]
finalDic.merge(dic1, dic2)
print(finalDic) // ["one": 1, "two": 2, "three": 3, "four": 4]
```

### NSObject extensions

**Get the class name of a `NSObject`**

```
let vc = UIViewController()
print(vc.className) // UIViewController
print(UIViewController.className) // UIViewController
```

### String extensions

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

### NSUserDefaults extensions

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

### NSMutableAttributedString extensions

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

### Occupiable

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

### BlockNotifications

```
// Register a notification
let notificationProxy = BlockNotification("aNotificationName": name) { notification in
	print("notification received: \(notification.object))
}

// Post a notification
NSNotificationCenter.defaultCenter().postNotificationName("aNotificationName", object: "Hello world")

```

## Available on iOS

### NSBundle extensions

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

### UIScreen extensions

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

### UIImage extensions

**Create an image from a color**

```
let image = UIImage.imageWithColor(UIColor.greenColor())
```
### UIView extensions

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

### BlockTapGesturesRecognizers

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

### BlockLongPressGesturesRecognizers

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

### BlockSwipeGesturesRecognizers

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

### BlockPanGesturesRecognizers

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

### BlockPinchGesturesRecognizers

```
let pinchGesture = BlockPinchGestureRecognizer { _ in
	print("pinch gesture detected"
}
viewPinchGesture.addGestureRecognizer(pinchGesture)     
```

## Installation

- iOS 8.0 or later
- OS X 10.10 or later
- tvOS 9.0 or later

### Manually

Copy the TBSwiftExtensions folder into your Xcode project. (Make sure you add the files to your target(s))

### CocoaPods

Add `pod TBSwiftExtensions` to your Podfile.

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `TBSwiftExtensions` by adding the proper description to your `Package.swift` file:

```
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/tbaranes/TBSwiftExtensions.git", majorVersion: 0)
    ]
)
```

## Feedback

  * If you found a **bug**, open an **issue**
  * If you have a **feature request**, open an **issue**
  * If you want to **contribute**, submit a **pull request**

## Contact

* [@tbaranes](https://github.com/tbaranes/) on github

## License

TBSwiftExtensions is under the MIT license. See the [LICENSE](https://github.com/tbaranes/TBSwiftExtensions/blob/master/LICENSE) file for more information.
