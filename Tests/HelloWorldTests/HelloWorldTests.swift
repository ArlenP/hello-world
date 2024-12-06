import XCTest

@testable import HelloWorld

class HelloWorldTests: XCTestCase {
    func testHello() {
        XCTAssertEqual(hello(), "Hello, World!")
    }
    func testHelloWithCustomName() {
        XCTAssertEqual(hello("Arlen"), "Hello, Arlen!")
        XCTAssertEqual(hello("Alice"), "Hello, Alice!")
    }
    func testHelloWithEmptyName() {
        XCTAssertEqual(hello(""), "Hello, World!")
    }
    func testHelloWithInvalidName() {
        XCTAssertEqual(hello("123"), "Hello, World!")
    }
    func testHelloWithSpaceWhiteSpace() {
        XCTAssertEqual(hello(" "), "Hello, World!")
    }
    func testHelloWithSpecialCharacters() {
        XCTAssertEqual(hello("!@#$%^&*()"), "Hello, World!")
    }
    func testTrimName() {
        XCTAssertEqual(trimName("  Arlen "), "Arlen")
    }
    func testIsValidName(){
        XCTAssertTrue(isValidName("Arlen"))
        XCTAssertFalse(isValidName(""))
        XCTAssertFalse(isValidName("123"))
        XCTAssertFalse(isValidName(" "))
    }
}
