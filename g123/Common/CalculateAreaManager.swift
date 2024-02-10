import Foundation

protocol CalculateAreaManagerProtocol: AnyObject {
    func calculateArea(shape: ShapeProtocol) -> Double
}

final class CalculateAreaManager: CalculateAreaManagerProtocol {
    func calculateArea(shape: ShapeProtocol) -> Double {
        shape.getArea()
    }
}
