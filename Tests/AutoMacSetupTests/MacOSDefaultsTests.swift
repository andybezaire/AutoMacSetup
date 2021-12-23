import XCTest

import class Foundation.Bundle

@testable import AutoMacSetup

final class MacOSDefaultsTests: XCTestCase {
    func testReadKeyReturnsExpectedValues() {
        let helloKey: MacOSDefaults.Domain.Key = .init(name: "hello-key", domain: .init(path: "com.welcome.to"))
        let sut = MacOSDefaults {
            return $0.joined(separator: " ")
        }

        let response = sut.read(helloKey)

        XCTAssertEqual(response, "defaults read com.welcome.to hello-key")
    }
}
