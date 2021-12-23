import XCTest

import class Foundation.Bundle

@testable import AutoMacSetup

final class ShellAccessTests: XCTestCase {
    func testEcho() {
        let response = ShellAccess.execute(["echo", "Hello, World!"])
        XCTAssertEqual(response, "Hello, World!")
    }
}
