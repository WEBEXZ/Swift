//
//  Conversor.swift
//  181026_CarlosFranciscoPerezCarrera_ArlenPaña_ProyectoFinal
//
//  Created by Macbook on 26/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Conversor {
    
    let descripciones: [String] = ["Metro", "Kilometro", "Yarda", "Centímetro", "Pie", "Pulgada"]
    let unidades: [Int:Longitud] = [1: Longitud.m, 2: Longitud.km, 3: Longitud.yd, 4: Longitud.cm, 5: Longitud.ft, 6: Longitud.inch]
    
    enum Longitud: Float {
        //Se define el valor de las unidades respecto al Metro
        case m = 1
        case km = 1000
        case yd = 0.9144
        case cm = 0.01
        case ft = 0.3048
        case inch = 0.0254
        
        func convertir(distancia valor: Float, to: Longitud) -> Float {
            if self.rawValue > to.rawValue {
                return (self.rawValue * to.rawValue) * valor
            } else {
                return (self.rawValue / to.rawValue) * valor
            }
        }
    }
    
    func convertirUnidades(distancia: Float, de: Int, a: Int) -> Float {
        return (unidades[de]!.convertir(distancia: distancia, to: unidades[a]!))
    }
}
