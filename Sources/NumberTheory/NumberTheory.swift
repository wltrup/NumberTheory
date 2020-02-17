import Foundation

public func gcd<T: SignedInteger>(_ a: T, _ b: T) -> T {
    guard a != 0 else { return b < 0 ? -b : b }
    guard b != 0 else { return a < 0 ? -a : a }
    return gcd(b, a % b)
}

public func gcd<T: SignedInteger>(_ values: [T]) -> T {
    guard !values.isEmpty else { fatalError("Can't compute GCD of an empty array") }
    guard values.count > 1 else { return values[0] }
    guard values.count > 2 else { return gcd(values[0], values[1]) }
    return gcd(values[0], gcd([T](values.dropFirst())))
}

public func lcm<T: SignedInteger>(_ a: T, _ b: T) -> T {
    let g = gcd(a, b)
    let r = (a * b) / g
    return (r < 0 ? -r : r)
}

public func lcm<T: SignedInteger>(_ values: [T]) -> T {
    guard !values.isEmpty else { fatalError("Can't compute LCM of an empty array") }
    guard values.count > 1 else { return values[0] }
    guard values.count > 2 else { return lcm(values[0], values[1]) }
    return lcm(values[0], lcm([T](values.dropFirst())))
}

public extension BinaryInteger {
    var isEven: Bool { self.isMultiple(of: 2) }
    var isOdd: Bool { isEven == false }
}
