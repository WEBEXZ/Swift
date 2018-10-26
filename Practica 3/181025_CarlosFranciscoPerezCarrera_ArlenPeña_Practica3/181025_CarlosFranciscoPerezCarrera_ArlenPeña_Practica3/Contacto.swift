//
//  Contacto.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Contacto : Persona {
    var empresa: String
    var parentesco: String
    var eventos: [Evento]
    
    init(nombre: String, apPaterno: String, apMaterno: String, fechaNacimiento: String, direccion: String, email: String, empresa: String, parentesco: String, eventos: [Evento]) {
        self.empresa = empresa
        self.parentesco = parentesco
        self.eventos = eventos
        super.init(nombre: nombre, apPaterno: apPaterno, apMaterno: apMaterno, fechaNacimiento: fechaNacimiento, direccion: direccion, email: email)
        
    }
    
    func getEmpresa() -> String {
        return empresa
    }
    
    func getParentesco() -> String {
        return parentesco
    }
    
    func getDetalleContacto() -> String {
        return getInformacion() + "\nEmpresa: " + getEmpresa() + "\nParentesco: " + getParentesco()
    }
    
    func validaEventos() -> Int {
        var count = 1
        var salida = 1
        for evento in eventos {
            if count > (eventos.count - 1) {
                return salida
            } else if evento.getFecha() == eventos[count].getFecha() && evento.getHora() == eventos[count].getHora(){
                salida = 0
                break
            }
            count += 1
        }
        return salida
    }
}
