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
- [Int](#int-extensions)
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

Access to a random element:

``` swift
var myArray = [1, 2, 3]
print(myArray.random()) // 2 or something else
```

Find the indexes of an object:

``` swift
var myArray = [1, 2, 3, 1]
print(myArray.indexesOf(1)) // [0,3]
```

Get index of last occurrence of an object:

``` swift
var myArray = [1, 2, 3, 1]
print(myArray.lastIndexOf(1)) // 3
```

Remove an object:

``` swift
var myArray = [1, 2, 3]
myArray.removeObject(2)
print(myArray) // [1, 3]
```

Check if an array contains instance of an object:

``` swift
var myArray = [1, 2, 3]
print(myArray.containsInstanceOf(1)) // true
print(myArray.containsInstanceOf("1")) // false
```

Check if an array contains another array:

``` swift
var myArray = [1, 2, 3]
print(myArray.containsArray([1, 2])) // true
print(myArray.containsArray([5])) // false
```

Shuffle an array:

``` swift
var myArray = [1, 2, 3, "5", "6]
myArray.shuffle()
print(myArray) // [3, "6", 1, 2, "5"]
```

Get an object at a specified index:

``` swift
var myArray = [1, 2, 3]
print(myArray.get(1)) // 2
```

Determine if an array contains an object:

``` swift
var myArray = [1, 2, 3]
print(myArray.contains(1)) // true
print(myArray.contains(11)) // false
```

Get intersection and union of two arrays:

``` swift
var myArray = [1, 2, 3]
print(myArray.intersection([1, 5, 3])) // [1, 3]
print(myArray.union([5, 6])) // [1, 2, 3, 5, 6]
```

Get difference between two arrays:

``` swift
var myArray = [1, 2, 3]
print(myArray.difference([1])) // [2, 3]
```

Test all elements of an array against a closure:

``` swift
var myArray = [1, 2, 3]
let result = myArray.testAll {
	$0 == 1
}
print(result) // false
```

### Dictionary extensions

Check if a key exists in the dictionary:

``` swift
let dic1 = ["one": 1, "two": 2]
print(myDict.has("one")) // True
print(myDict.has("1")) // False
```

Access a random element:

``` swift
let dic1 = ["one": 1, "two": 2]
print(myDict.random()) // 1 or something else
```

Add dictionaries to create new ones:

``` swift
let dic1 = ["one": 1]
let dic2 = ["three": 3]

dictionary1 += dictionary2
print(dictionary1) // ["one": 1, "three": 3]
```

Easily get union of two dictionaries:

``` swift
let dic1 = ["one": 1, "two": 2]
let dic2 = ["one": 1, "four": 4]

let dictionary3 = dictionary1.union(dictionary2)
print(dictionary3) // ["one": 1, "two": 2, "four": 4]
```

Get difference of two dictionaries:

``` swift
let dic1 = ["one": 1, "two": 2]
let dic2 = ["one": 1, "four": 4]
difference(dictionary1, dictionary2) // ["two": 2, "four": 4]
```

Merge several dictionaries:

```swift
let dic1 = ["one": 1, "two": 2]
let dic2 = ["three": 3, "four": 4]
var finalDic: Dictionary<String, Int> = [:]
finalDic.merge(dic1, dic2)
print(finalDic) // ["one": 1, "two": 2, "three": 3, "four": 4]
```

## NSDate Extensions

Initialize from string:

``` swift
let format = "yyyy/MM/dd"
let fromString = "2015/03/11"
print(NSDate(fromString: fromString, format: format)) // Optional("2015/03/11 00:00:00 +0000")
```

Convert date into string:

``` swift
let now = NSDate()
print(now.toString())
print(now.toString(dateStyle: .MediumStyle, timeStyle: .MediumStyle))
print(now.toString(format: "yyyy/MM/dd HH:mm:ss"))
```

See how much time passed:

``` swift
let now = NSDate()
let later = NSDate(timeIntervalSinceNow: -100000)
print(later.daysInBetweenDate(now)) // 1.15740740782409
print(later.hoursInBetweenDate(now)) // 27.7777777733571
print(later.minutesInBetweenDate(now)) // 1666.66666641732
print(later.secondsInBetweenDate(now)) // 99999.999984026
```

Check if dates are equal:

``` swift
let now = NSDate()
let now2 = NSDate()
print(now == now2) // false
```

Check which date is larger:

``` swift
let now = NSDate()
let now2 = NSDate()
print(now < now2) // true
print(now2 < now) // false  
```

### NSObject extensions

Get the class name of a `NSObject`:

```swift
let vc = UIViewController()
print(vc.className) // UIViewController
print(UIViewController.className) // UIViewController
```

### String extensions

Get the length of a string:

```swift
var aString = "hello world"
print(aString.length) // 11
```

Access with subscript:

```swift
var aString = "hello world"
print(aString[0]) // h
print(aString[2]) // l
print(aString[1...3]) // ell
```

Check if it contains a string:

```swift
let aString = "Hello world"
print (aString.contains("hello")) // true
print (aString.contains("hellooooo")) // false
```

Capitalize the first letter:

```swift
var aString = "hello world"
aString = aString.capitalizeFirst
print(aString)// Hello world
```

Check if it's composed only of spaces and new lines:

```swift
var aString = "  \n  "
print(aString.isOnlyEmptySpacesAndNewLineCharacters()) // true
var aString = "test"
print(aString.isOnlyEmptySpacesAndNewLineCharacters()) // false
```

Trimmed spaces and new lines:

```swift
var aString = " I'  am a    test  \n  "
print(aString.trim()) // I'am a test
```

Check if it's a number:

```swift
var aString = "4242"
print(aString.isNumber()) // true
var aString = "test"
print(aString.isNumber) // false
```

Check if it's a valid email:

```swift
var aString = "test@gmail.com"
print(aString.isEmail) // true
var aString = "test@"
print(aString.isEmail) // false
```

Extracts URLs:

```swift
let string = "http://google.com http fpt:// http://facebook.com test"
print(aString.extractURLs) // [http://google.com, http://facebook.com]
```
### Int extensions

```swift
var myNumber = -33
print(myNumber.isEven) // false
print(myNumber.isOdd) // true
print(myNumber.isPositive) // false
print(myNumber.isNegative) // true
print(myNumber.digits) // 2
```

### NSUserDefaults extensions

Check if the userdefaults contains a key:

```swift
NSUserDefaults.contains("aKey")
// OR
NSUserDefaults.standarUserDefaults.contains("aKey")
```

Reset the defaults:

```swift
NSUserDefaults.standarUserDefaults.reset()
```

### NSMutableAttributedString extensions

Colorize each occurence:

```swift
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextcolor("hello world", color: UIColor.yellowColor(), forOccurences: "llo")

// OR

let attrStr: NSMutableAttributedString = NSMutableAttributedString(string: "Hello world")
attrStr.setTextColor(UIColor.yellowColor(), forOccurences: "llo")
```

Colorize everything after an occurence:

```swift
let attrStr = NSMutableAttributedString.setTextcolor("Hello world", color: UIColor.yellowColor(), afterOcurrence: "llo")

// OR

let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextColor(UIColor.yellowColor(), afterOcurrence: "llo")
```

Strike each occurence:

```swift
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextStrike("Hello world", forOccurences: "llo")

// OR

let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextStrike(forOccurences: "llo")
```

Strike everything after an occurence:

```swift
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextStrike("Hello world", afterOcurrence: "llo")

// OR

let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextStrike(afterOcurrence: "llo")
```

Underline each occurence:

```swift
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextUnderline("Hello world", forOccurences: "llo")

// OR

let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextUnderline(forOccurences: "llo")
```

Underline everything after an occurence:

```swift
let attrStr: NSMutableAttributedString = NSMutableAttributedString.setTextUnderline("Hello world", afterOcurrence: "llo")

// OR

let attrStr = NSMutableAttributedString(string: "Hello world")
attrStr.setTextUnderline(afterOcurrence: "llo")
```

### Occupiable

The following use cases works for String Array, Dictionary, and Set

`isEmpty` / `isNotEmpty`

*No optional types only*

```swift
var string = "Hello world"
print(string.isNotEmpty) // true
print(string.isEmpty) // false
```

`isNilOrEmpty`

*Optional types only*

```swift
let string: String? = ""
print(string.isNilOrEmpty) // true
```

### BlockNotifications

```swift
// Register a notification
let notificationProxy = BlockNotification("aNotificationName": name) { notification in
	print("notification received: \(notification.object))
}

// Post a notification
NSNotificationCenter.defaultCenter().postNotificationName("aNotificationName", object: "Hello world")
```

## Available on iOS

### NSBundle extensions

Get the app version:

```swift
NSBundle.mainBundle().appVersion
NSBundle(URL: someURL)?.appVersion
```

Get the app build:

```swift
NSBundle(URL: someURL)?.appBuild
NSBundle.mainBundle().appBuild
```

### UIScreen extensions

Get the screen orientation:

```swift
if UIInterfaceOrientationIsPortrait(UIScreen.screenOrientation())) {
	// Portrait
} else {
	// Landscape
}
```

Get the screen size:

```swift
print(UIScreen.currentSize) // CGSize(375.0, 667.0) on iPhone6
print(UIScreen.screenWidth) // 375.0 on iPhone6
print(UIScreen.screenHeight) // 667.0 on iPhone6
print(UIScreen.screenHeightWithoutStatusBar) // 647.0 on iPhone6
```

Get the status bar height:

```swift
print(UIScreen.screenStatusBarHeight) // 20.0 on iPhone6
```

### UIImage extensions

Create an image from a color:

```swift
let image = UIImage.imageWithColor(UIColor.greenColor())
```
### UIView extensions

**Automates your localizables**

```swift
aView.convertLocalizables()
```

It will iterate on all the subviews of the view, and use the text / placeholder as key in `NSLocalizedString`.
By settings your localizable key in your xib / storyboard, all yours string will be automatically translated just by calling the above method.

**Instantiate view from nib programatically**

```swift
let myCustomView: CustomView = UIView.fromNib()
// or
let myCustomView = UIView.fromNib() as? CustomView
```

### BlockTapGesturesRecognizers

```swift
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

```swift
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

```swift
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

```swift
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

```swift
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
