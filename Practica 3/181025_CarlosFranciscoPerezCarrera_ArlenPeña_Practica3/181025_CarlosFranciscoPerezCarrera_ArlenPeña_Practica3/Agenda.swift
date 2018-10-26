//
//  Agenda.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Agenda {
    var persona: Persona
    var contactos: [Contacto]
    
    init(persona: Persona, contactos: [Contacto]) {
        self.persona = persona
        self.contactos = contactos
    }
    
    func mostrarContactos() -> Void {
        print("************CONTACTOS**************")
        for contacto in contactos {
            print(contacto.getDetalleContacto())
            print("***********************************")
        }
    }
    
    func buscarContactos(parentesco: String) -> [Contacto] {
        var salida: [Contacto] = []
        for contacto in contactos {
            if contacto.getParentesco() == parentesco {
                salida.append(contacto)
            }
        }
        return salida
    }
}
