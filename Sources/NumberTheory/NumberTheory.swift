import Foundation

public func gcd<T: SignedInteger>(_ a: T, _ b: T) -> T? {
    guard a != 0 || b != 0 else { return nil }
    guard a != 0 else { return b < 0 ? -b : b }
    guard b != 0 else { return a < 0 ? -a : a }
    return gcd(b, a % b)
}

public func gcd<T: SignedInteger>(_ values: [T]) -> T? {
    guard !values.isEmpty else { return nil }
    guard values.count > 1 else { return values[0] == 0 ? nil : values[0] }
    guard values.count > 2 else { return gcd(values[0], values[1]) }
    guard let g = gcd([T](values.dropFirst())) else { return nil }
    return gcd(values[0], g)
}

public func lcm<T: SignedInteger>(_ a: T, _ b: T) -> T? {
    guard let g = gcd(a, b) else { return nil }
    let r = (a * b) / g
    return (r < 0 ? -r : r)
}

public func lcm<T: SignedInteger>(_ values: [T]) -> T? {
    guard !values.isEmpty else { return nil }
    guard values.count > 1 else { return values[0] == 0 ? nil : values[0] }
    guard values.count > 2 else { return lcm(values[0], values[1]) }
    guard let ell = lcm([T](values.dropFirst())) else { return nil }
    return lcm(values[0], ell)
}

public extension BinaryInteger {
    var isEven: Bool { self.isMultiple(of: 2) }
    var isOdd: Bool { isEven == false }
}
