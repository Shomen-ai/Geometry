import XCTest
@testable import g123

final class TriangleTests: XCTestCase {
    var subject: Triangle!

    override func setUp() {
        super.setUp()

        subject = Triangle(sideA: 3, sideB: 4, sideC: 5)
    }

    func testGetArea() {
        subject = Triangle(sideA: 3, sideB: 4, sideC: 5)
        let area = subject.getArea()

        XCTAssertEqual(area, 6.0)
    }

    func testRightAngleTriangle() {
        subject = Triangle(sideA: 3, sideB: 4, sideC: 5)

        XCTAssertTrue(subject.isRightAngleTriangle())
    }

    func testNotRightAngleTriangle() {
        subject = Triangle(sideA: 3, sideB: 4, sideC: 6)

        XCTAssertFalse(subject.isRightAngleTriangle())
    }
}
