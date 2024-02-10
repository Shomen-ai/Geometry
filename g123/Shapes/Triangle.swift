import Foundation

final class Triangle {
    // MARK: - Properties

    private let sideA: Double
    private let sideB: Double
    private let sideC: Double

    // MARK: - Initialization

    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }

    func isRightAngleTriangle() -> Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
    }
}

// MARK: - ShapeProtocol

extension Triangle: ShapeProtocol {
    func getArea() -> Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
}
