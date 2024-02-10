import XCTest
@testable import g123

final class CalculateAreaManagerTests: XCTestCase {
    var subject: CalculateAreaManagerProtocol!

    var shape: ShapeProtocolMock!

    override func setUp() {
        super.setUp()

        subject = CalculateAreaManager()

        shape = .init()
    }

    func testCalculateArea() {
        subject.calculateArea(shape: shape)

        XCTAssertEqual(shape.getAreaCallsCount, 1)
    }
}
