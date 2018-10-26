import UIKit

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three",
    4: "Four", 5: "Five", 6: "Six", 7: "Seven",
    8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let strings = numbers.map({
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        print(output)
        number /= 10
    } while number > 0
    return output
})

print(strings)

var myArray = [0,1,2,3,4,5,6,7,8,9]
myArray.filter { (value) -> Bool in
    return value % 2 == 0
}

let values = [1,2,3,4,5,6]
let sumValues = values.reduce(0, { x, y in
    return x + y
})


enum HttpError: String {
    case _400 = "Bad Request"
    case _401 = "Unauthorized"
    case _402 = "Payment Required"
    case _403 = "Forbidden"
    case _404 = "Not Found"
}

let error = HttpError._404.rawValue

enum Device {
    case iPod, iPad, iPhone
    var year : Int {
        switch self {
        case .iPod: return 2001
        case .iPhone: return 2007
        case .iPad: return 2010
        }
    }
}

let myDevice = Device.iPad.year

enum Longitude: Float{
    case m = 1
    case km = 1000
    func convert(distance value:Float, to: Longitude) -> Float{
        if self.rawValue < to.rawValue {
            return (self.rawValue / to.rawValue) * value
        }else{
            return (self.rawValue * to.rawValue) * value
        }
    }
}

print(Longitude.km.convert(distance: 5, to: Longitude.m))
print(Longitude.m.convert(distance: 700, to: Longitude.km))
