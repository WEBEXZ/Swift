import UIKit

var array = [1, 2, 3, 4, 5]

for _ in array {
    array.insert(array.first!, at: array.endIndex)
    array.remove(at: array.startIndex)
    print(array)
}

var a: Set<String> = ["a", "b", "c", "d", "e"]
var b: Set<String> = ["a", "b", "f", "g", "h", "u", "v"]
var c: Set<String> = ["h", "g", "j", "t", "v"]
var d: Set<String> = ["j", "k", "l", "m", "a", "z"]

print(d.union(a))
print(c.union(b))
print(a.intersection(b))
print(c.symmetricDifference(d))
print(b.isSubset(of: c))
print(c.subtracting(d))
print(a.subtracting(b))
print(!a.isDisjoint(with: d))
print(!c.isDisjoint(with: b))

func saludar(_ nombre: String, on day: String) -> String {
    return "Hola " + nombre + " es " + day
}

print(saludar("Mundo", on: "Martes"))

func calculadora(operacion: (Int, Int) -> Int, a: Int, b: Int = 0) -> Void {
    print("Resultado: \(operacion(a, b))")
}

func suma(a: Int, b: Int) -> Int {
    return a + b;
}

func resta(a: Int, b: Int) -> Int {
    return a - b;
}

func multiplicacion(a: Int, b: Int) -> Int {
    return a * b;
}

func division(a: Int, b: Int) -> Int {
    return Int(a / b);
}

func modulo(a: Int, b: Int) -> Int {
    return a % b;
}

func factorial(a: Int, _ b: Int = 0) -> Int {
    return (a == 0) ? 1: a * factorial(a: a-1)
}

calculadora(operacion: suma, a: 5, b: 4)
calculadora(operacion: resta, a: 5, b: 4)
calculadora(operacion: multiplicacion, a: 5, b: 4)
calculadora(operacion: division, a: 5, b: 4)
calculadora(operacion: modulo, a: 5, b: 4)
calculadora(operacion: factorial, a: 5)
