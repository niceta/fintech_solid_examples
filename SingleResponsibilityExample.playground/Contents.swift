class Brick {
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

func arhimedsForce(brick: Brick) -> Double {
    let g = 9.81
    let volume = brick.depth * brick.height * brick.width
    let density = brick.m / volume
    return density * g * volume
}

let brick = Brick(m: 12.21, height: 32.1, width: 4, depth: 0.34)

print(arhimedsForce(brick: brick))























//func volume(brick: Brick) -> Double {
//    return brick.height * brick.width * brick.depth
//}
//
//func density(brick: Brick) -> Double {
//    return brick.m / volume(brick: brick)
//}
//
//func arhimedsForce(brick: Brick) -> Double {
//    let g = 9.81
//    return density(brick: brick) * g * volume(brick: brick)
//}
