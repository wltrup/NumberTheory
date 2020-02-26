import XCTest
@testable import NumberTheory

final class NumberTheoryTests: XCTestCase {

    static var allTests = [
        ("test_gcd_of_two_values_neg_a_neg_b", test_gcd_of_two_values_neg_a_neg_b),
        ("test_gcd_of_two_values_neg_a_zero_b", test_gcd_of_two_values_neg_a_zero_b),
        ("test_gcd_of_two_values_neg_a_pos_b", test_gcd_of_two_values_neg_a_pos_b),
        ("test_gcd_of_two_values_zero_a_neg_b", test_gcd_of_two_values_zero_a_neg_b),
        ("test_gcd_of_two_values_zero_a_zero_b", test_gcd_of_two_values_zero_a_zero_b),
        ("test_gcd_of_two_values_zero_a_pos_b", test_gcd_of_two_values_zero_a_pos_b),
        ("test_gcd_of_two_values_pos_a_neg_b", test_gcd_of_two_values_pos_a_neg_b),
        ("test_gcd_of_two_values_pos_a_zero_b", test_gcd_of_two_values_pos_a_zero_b),
        ("test_gcd_of_two_values_pos_a_pos_b", test_gcd_of_two_values_pos_a_pos_b),
        ("test_gcd_of_empty_array", test_gcd_of_empty_array),
        ("test_gcd_of_single_value_array", test_gcd_of_single_value_array),
        ("test_gcd_of_two_values_array", test_gcd_of_two_values_array),
        ("test_gcd_of_multiple_values_array", test_gcd_of_multiple_values_array),
        ("test_lcm_of_two_values_neg_a_neg_b", test_lcm_of_two_values_neg_a_neg_b),
        ("test_lcm_of_two_values_neg_a_zero_b", test_lcm_of_two_values_neg_a_zero_b),
        ("test_lcm_of_two_values_neg_a_pos_b", test_lcm_of_two_values_neg_a_pos_b),
        ("test_lcm_of_two_values_zero_a_neg_b", test_lcm_of_two_values_zero_a_neg_b),
        ("test_lcm_of_two_values_zero_a_zero_b", test_lcm_of_two_values_zero_a_zero_b),
        ("test_lcm_of_two_values_zero_a_pos_b", test_lcm_of_two_values_zero_a_pos_b),
        ("test_lcm_of_two_values_pos_a_neg_b", test_lcm_of_two_values_pos_a_neg_b),
        ("test_lcm_of_two_values_pos_a_zero_b", test_lcm_of_two_values_pos_a_zero_b),
        ("test_lcm_of_two_values_pos_a_pos_b", test_lcm_of_two_values_pos_a_pos_b),
        ("test_lcm_of_empty_array", test_lcm_of_empty_array),
        ("test_lcm_of_single_value_array", test_lcm_of_single_value_array),
        ("test_lcm_of_two_values_array", test_lcm_of_two_values_array),
        ("test_lcm_of_multiple_values_array", test_lcm_of_multiple_values_array),
        ("test_isEven", test_isEven),
        ("test_isOdd", test_isOdd),
    ]

    func test_gcd_of_two_values_neg_a_neg_b() {
        let a = -36
        let b = -24
        let exp: Int? = 12
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_neg_a_zero_b() {
        let a = -36
        let b = 0
        let exp: Int? = 36
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_neg_a_pos_b() {
        let a = -36
        let b = 24
        let exp: Int? = 12
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_zero_a_neg_b() {
        let a = 0
        let b = -24
        let exp: Int? = 24
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_zero_a_zero_b() {
        let a = 0
        let b = 0
        let exp: Int? = nil
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_zero_a_pos_b() {
        let a = 0
        let b = 24
        let exp: Int? = 24
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_pos_a_neg_b() {
        let a = 36
        let b = -24
        let exp: Int? = 12
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_pos_a_zero_b() {
        let a = 36
        let b = 0
        let exp: Int? = 36
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_pos_a_pos_b() {
        let a = 36
        let b = 24
        let exp: Int? = 12
        let res = gcd(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_empty_array() {
        let a: [Int] = []
        let exp: Int? = nil
        let res = gcd(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_single_value_array() {
        let a: [Int] = [12]
        let exp: Int? = 12
        let res = gcd(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_two_values_array() {
        let a: [Int] = [24, 36]
        let exp: Int? = 12
        let res = gcd(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_gcd_of_multiple_values_array() {
        let a: [Int] = [24, 36, 12, 60, 72]
        let exp: Int? = 12
        let res = gcd(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_neg_a_neg_b() {
        let a = -3
        let b = -6
        let exp: Int? = 6
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_neg_a_zero_b() {
        let a = -3
        let b = 0
        let exp: Int? = 0
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_neg_a_pos_b() {
        let a = -3
        let b = 6
        let exp: Int? = 6
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_zero_a_neg_b() {
        let a = 0
        let b = -6
        let exp: Int? = 0
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_zero_a_zero_b() {
        let a = 0
        let b = 0
        let exp: Int? = nil
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_zero_a_pos_b() {
        let a = 0
        let b = 6
        let exp: Int? = 0
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_pos_a_neg_b() {
        let a = 3
        let b = -6
        let exp: Int? = 6
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_pos_a_zero_b() {
        let a = 3
        let b = 0
        let exp: Int? = 0
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_pos_a_pos_b() {
        let a = 3
        let b = 6
        let exp: Int? = 6
        let res = lcm(a, b)
        XCTAssert(res == exp,
                  "a = \(a), b = \(b), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_empty_array() {
        let a: [Int] = []
        let exp: Int? = nil
        let res = lcm(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_single_value_array() {
        let a: [Int] = [3]
        let exp: Int? = 3
        let res = lcm(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_two_values_array() {
        let a: [Int] = [3, 6]
        let exp: Int? = 6
        let res = lcm(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_lcm_of_multiple_values_array() {
        let a: [Int] = [3, 4, 6, 2]
        let exp: Int? = 12
        let res = lcm(a)
        XCTAssert(res == exp,
                  "a = \(a), exp = \(String(describing: exp)), res = \(String(describing: res))")
    }

    func test_isEven() {
        let x = Int.random(in: -10...10)
        let a = 2 * x
        XCTAssert(a.isEven == true)
        XCTAssert(a.isOdd == false)
    }

    func test_isOdd() {
        let x = Int.random(in: -10...10)
        let a = 2 * x + 1
        XCTAssert(a.isEven == false)
        XCTAssert(a.isOdd == true)
    }

}
