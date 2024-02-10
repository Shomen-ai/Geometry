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

// Считаю, что задание не совсем корректное пунктик с проверкой треугольника на прямой угол, 
// т.к никаких дальнейших действий не происходит с ответом от функции isRightAngleTriangle().
// По логике, эту функцию нужно вынести в отдельный менеджер и покрыть протоколом, но это уже 
// избыточность, потому что непонятно для чего эта функция нужна, в задании ничего не написано зачем и что с этим делать.
// Оставил эту функицю в классе, потому что неясно, по-моему мнению, что с этими данным делать дальше, но это плохой пример тестируемости. 
// То есть, если бы у нас были какие либо другие условия завязанные на этом, то мы могли бы правильно протестировать этот момент,
// а так мы просто проверили правильный ли он и всё.
