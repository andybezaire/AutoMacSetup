import XCTest

import class Foundation.Bundle

@testable import AutoMacSetup

final class AutoMacSetupTests: XCTestCase {

    func testDockPositionReturnsBottom() {

        let response = DockDefaults.shared.read(.orientation)
//        XCTAssertEqual(response, "bottom")
    }

    func testDockPositionReturnsLeft() {
        let response = DockDefaults.shared.read(.orientation)
//        XCTAssertEqual(response, "left")
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
#if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
#else
        return Bundle.main.bundleURL
#endif
    }
}
