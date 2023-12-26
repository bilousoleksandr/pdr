@testable import AppFeature
import TestExtensions
import XCTest

final class MainTests: XCTestCase {
    func testExample() throws {
        struct Item: Equatable {
            let id: UUID
        }
        
        let first = Item(id: .init())
        let second = first

        XCTAssertEqual(first, second)
        XCTAssertNoDifference(first, second)
    }
}
