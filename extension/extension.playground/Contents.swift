import UIKit

struct Size {
    var width = 0.0 ,heigt = 0.0
    
}

struct Point {
    var x = 0.0 ,y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultReact = Rect()

let memberwiseReact = Rect(origin: Point(x: 2.0, y: 2.0),size: Size(width: 5.0, heigt: 5.0))

extension Rect {
    init(center:Point,size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.width/2)
        
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

//Mutating Instance Methods
extension Int {
    mutating func square(){
        self = self * self
    }
}
var someInt = 3
someInt.square()


//Subscripts
extension Int {
    subscript(digitIndex:Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }

}

123450[18]


//Nested Type

extension Int {
    enum Kind {
        case negative ,zero,positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}


func printIntergerKinds(_ numbers:[Int]){
    for number in numbers {
        switch number.kind {
        case .negative:
            print("-",  terminator: " ")
        case .zero:
            print("0",  terminator: " ")
        case .positive:
            print("+",  terminator: " ")
       
    }
    }
}
printIntergerKinds([2,45,-45,0,-3])
