#TBSwiftExtensions

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
        .Package(url: "https://github.com/tbaranes/TBSwiftExtensions.git", majorVersion: 0.2.0)
    ]
)
```

#Usage

Within this repo you'll find the examples for iOS, OSX, and tvOS using each extensions / helpers from the library.

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
