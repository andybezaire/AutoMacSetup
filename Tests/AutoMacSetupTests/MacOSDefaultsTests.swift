import XCTest

import class Foundation.Bundle

@testable import AutoMacSetup

final class MacOSDefaultsTests: XCTestCase {
    func testKeysReturnExpectedValues() {
        let sut = MacOSDefaults { _ in
           return ""
        }

        sut.read(.init(name: "my-key", domain: MacOSDefaults.Domain(path:"com.example.domain.mine")))

        XCTAssertEqual(response, "Hello, World!")
    }
}
