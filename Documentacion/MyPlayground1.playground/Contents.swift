 import UIKit
 
 // Ejemplo del uso de VAR
 var distance : Double = 10
 distance = 10
 print(distance)
 
 // Descomentar para probar el ejemplo de VAR
// distance = 15
// print(distance)
 
 // Ejemplo del uso de LET
 let velocity : Double = 3
 print(velocity)
 
 // Descomentar para probar el ejemplo de LET
 //velocity = 15
 //print(velocity)

 print("Operaciones basicas")
 print(distance + velocity)
 print(distance - velocity)
 print(distance * velocity)
 print(distance / velocity)
 print(distance.truncatingRemainder(dividingBy: velocity))
 
 var cadena = "cadena"
 cadena.insert("¡", at: cadena.startIndex)
 cadena.insert("!", at: cadena.endIndex)
 cadena.insert("s", at: cadena.index(before: cadena.endIndex))
 cadena.insert(contentsOf : " uno", at: cadena.index(before: cadena.endIndex))
 
 var ejemplo = "Buenos dias,"
 ejemplo.insert(contentsOf: " chicos ", at: ejemplo.endIndex)
 
 var a : UInt = UInt.max
 var b : UInt8 = UInt8.max
 var c : Int = Int.max
 var d : Int32 = Int32.max
 var e : UInt32 = UInt32.max
 var f : UInt64 = UInt64.max

 let tres = 3
 let decimal = 0.14159
 let pi = Double(tres) + decimal

 
 let valor = ("FTP", 21, false)
 let tupla = (id: 1, name: "Mundo")
 var mensaje : String = ""
 var (descripcion, number, _) = valor
 mensaje = "Puerto \(number) en \(descripcion)"
 
 var posibleNumero : String = "123"
 var opcional : Int? = Int(posibleNumero)
 posibleNumero = "abc"
 opcional = Int(posibleNumero)
 print(opcional)
 
 var uno : Int = 0
 var dos : Int = 0
 var mensajeDos : String = ""
 var num = 6
 posibleNumero = "4"
 opcional = Int(posibleNumero)
 
 if let opt = opcional{
    uno = opt + num
 } else {
    uno = 0
 }
 
 print(uno)
 print(1...10)
 
 for i in 1...10 {
    print(i)
 }
 
 let diccionario = ["a": 1, "b": 2, "c": 3]
 
 for(key, value) in diccionario {
    print(key, value)
 }

 
 var nombres = ["Juan", "pedro", "luis"]
 print(nombres[nombres.count - 1])
