import Foundation

final class ShapeProtocolMock: ShapeProtocol {
    var getAreaCallsCount = 0

    func getArea() -> Double {
        getAreaCallsCount += 1
        return 0
    }
}
