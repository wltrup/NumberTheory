# NumberTheory
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/NumberTheory)
![GitHub](https://img.shields.io/github/license/wltrup/NumberTheory)

## What

**NumberTheory** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above,  defining a few simple functions to perform common number-theoretic operations:
```swift
/// Greatest common divisor
public func gcd<T: SignedInteger>(_ a: T, _ b: T) -> T?
public func gcd<T: SignedInteger>(_ values: [T]) -> T?

/// Least common multiple
public func lcm<T: SignedInteger>(_ a: T, _ b: T) -> T?
public func lcm<T: SignedInteger>(_ values: [T]) -> T?

public extension BinaryInteger {
    var isEven: Bool
    var isOdd: Bool
}
```

## Installation

**NumberTheory** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**NumberTheory** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
