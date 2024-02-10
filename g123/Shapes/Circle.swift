import Foundation

final class Circle {
    // MARK: - Properties

    private let radius: Double

    // MARK: - Initialization

    init(radius: Double) {
        self.radius = radius
    }
}

// MARK: - ShapeProtocol

extension Circle: ShapeProtocol {
    func getArea() -> Double {
        Double.pi * radius * radius
    }
}
