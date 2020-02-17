import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NumberTheoryTests.allTests),
    ]
}
#endif
