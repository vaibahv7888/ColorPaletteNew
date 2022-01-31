import XCTest
@testable import ColorPalette

final class ColorPaletteTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ColorPalette().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
