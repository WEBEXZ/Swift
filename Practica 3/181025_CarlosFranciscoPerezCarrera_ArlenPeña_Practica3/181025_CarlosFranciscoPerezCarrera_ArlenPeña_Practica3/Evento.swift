//
//  Evento.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Evento {
    var fecha: String
    var hora: String
    var descripcion: String
    
    init(fecha: String, hora: String, descripcion: String) {
        self.fecha = fecha
        self.hora = hora
        self.descripcion = descripcion
    }
    
    func getFecha() -> String {
        return fecha
    }
    
    func getHora() -> String {
        return hora
    }
    
    func getDescripcion() -> String {
        return descripcion
    }
    
    func mostrarDetalleEvento() -> String {
        return "Evento: " + getDescripcion() + "\nFecha: " + getFecha() + "\nHora: " + hora
    }
}
