import Foundation

let calculateAreaManager = CalculateAreaManager()


let circle = Circle(radius: 5)
let circleAres = calculateAreaManager.calculateArea(shape: circle)
print("Площадь круга: \(circleAres)")


let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
let triangleArea = calculateAreaManager.calculateArea(shape: triangle)
print("Площадь треугольника: \(triangleArea)")
print("Является ли треугольник прямоугольным: \(triangle.isRightAngleTriangle())")

