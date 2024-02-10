import XCTest
@testable import g123

final class CircleTests: XCTestCase {
    var subject: Circle!

    override func setUp() {
        super.setUp()

        subject = Circle(radius: 5)
    }

    func testGetArea() {
        let area = subject.getArea()

        XCTAssertEqual(area, 78.53981633974483)
    }
}
