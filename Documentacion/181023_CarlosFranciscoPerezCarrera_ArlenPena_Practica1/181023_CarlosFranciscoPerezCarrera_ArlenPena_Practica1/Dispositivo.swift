//
//  Dispositivo.swift
//  181023_CarlosFranciscoPerezCarrera_ArlenPena_Practica1
//
//  Created by Macbook on 23/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Dispositivo {
    var persona: Persona
    var contactos: [Contacto]
    
    init(persona: Persona, contactos: [Contacto]) {
        self.persona = persona
        self.contactos = contactos
    }
    
    func getInformacion() -> Void {
        for x in contactos {
            print(x.getInformacionContacto())
        }
    }
    
    func findParentesco(parentesco: String) -> [Contacto] {
        var tmp: [Contacto] = []
        for x in contactos {
            if x.getParentesco() == parentesco {
                tmp.append(x)
            }
        }
        return tmp
    }
}
