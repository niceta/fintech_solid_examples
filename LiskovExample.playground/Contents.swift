class Rectangle {
    var width: Double = 0
    var height: Double = 0
    
    func setWidth(width: Double) {
        self.width = width
    }
    func getWidth() -> Double {
        return width
    }
    
    func setHeight(height: Double) {
        self.height = height
    }
    
    func getHeight() -> Double {
        return height
    }
}

class Square: Rectangle {
    override func setWidth(width: Double) {
        self.width = width
        self.height = width
    }
    
    override func setHeight(height: Double) {
        self.width = height
        self.height = height
    }
}

func areaVerifier(figure: Rectangle) {
    figure.setWidth(width: 5)
    figure.setHeight(height: 4)
    
    let s = figure.getWidth() * figure.getHeight()
    
    if (s == 20) {
        print("success")
    } else {
        print("fail")
    }
}

let rectangle = Rectangle()
let square = Square()


areaVerifier(figure: rectangle)
areaVerifier(figure: square)
