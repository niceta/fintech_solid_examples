import Foundation

//protocol Figure {
//    var m: Double { get }
//}
//
//class Brick: Figure {
//    var m: Double
//    var height: Double
//    var width: Double
//    var depth: Double
//
//    init(m: Double, height: Double, width: Double, depth: Double) {
//        self.m = m
//        self.height = height
//        self.width = width
//        self.depth = depth
//    }
//}
//
//class Ball: Figure {
//    var m: Double
//    var radius: Double
//
//    init(m: Double, radius: Double) {
//        self.m = m
//        self.radius = radius
//    }
//}
//
//func volume(figure: Figure) -> Double {
//    if let brick = figure as? Brick {
//        return brick.height * brick.width * brick.depth
//    } else if let ball = figure as? Ball {
//        let pi = 3.14
//        return 4/3 * pi * pow(ball.radius, 3)
//    } else {
//        return 0
//    }
//}
//
//func density(figure: Figure) -> Double {
//    return figure.m / volume(figure: figure)
//}
//
//func arhimedsForce(figure: Figure) -> Double {
//    let g = 9.81
//    return density(figure: figure) * g * volume(figure: figure)
//}
//
//let brick = Brick(m: 12.21, height: 32.1, width: 4, depth: 0.34)
//let ball = Ball(m: 1, radius: 1.25)
//
//print(arhimedsForce(figure: brick))
//print(arhimedsForce(figure: ball))
//
//
//
//
//






protocol Figure {
    var m: Double { get }
    func volume() -> Double
}

class Brick: Figure {
    func volume() -> Double {
        return height * width * depth
    }

    var m: Double
    var height: Double
    var width: Double
    var depth: Double

    init(m: Double, height: Double, width: Double, depth: Double) {
        self.m = m
        self.height = height
        self.width = width
        self.depth = depth
    }
}

class Ball: Figure {
    func volume() -> Double {
        let pi = 3.14
        return 4/3 * pi * pow(radius, 3)
    }

    var m: Double
    var radius: Double

    init(m: Double, radius: Double) {
        self.m = m
        self.radius = radius
    }
}

// Так делать не нужно
//func volume(figure: Figure) -> Double {
//    if let brick = figure as? Brick {
//        return brick.height * brick.width * brick.depth
//    } else if let ball = figure as? Ball {
//        let pi = 3.14
//        return 4/3 * pi * pow(ball.radius, 3)
//    } else {
//        return 0
//    }
//}

func density(figure: Figure) -> Double {
    return figure.m / figure.volume()
}

func arhimedsForce(figure: Figure) -> Double {
    let g = 9.81
    return density(figure: figure) * g * figure.volume()
}

let brick = Brick(m: 12.21, height: 32.1, width: 4, depth: 0.34)
let ball = Ball(m: 1, radius: 1.25)

print(arhimedsForce(figure: brick))
print(arhimedsForce(figure: ball))

