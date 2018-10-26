//
//  Contacto.swift
//  181023_CarlosFranciscoPerezCarrera_ArlenPena_Practica1
//
//  Created by Macbook on 23/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Contacto : Persona {
    var empresa: String
    var parentesco: String
    
    init(persona: Persona, empresa: String, parentesco: String) {
        self.empresa = empresa
        self.parentesco = parentesco
        super.init(nombre: persona.nombre, apellidoPaterno: persona.apellidoPaterno, apellidoMaterno: persona.apellidoMaterno, fechaNacimiento: persona.fechaNacimiento, domicilio: persona.domicilio, email: persona.email)
    }
    
    func getEmpresa() -> String {
        return self.empresa
    }
    
    func getParentesco() -> String {
        return self.parentesco
    }
    
    func getInformacionContacto() -> String {
        let informacion: String = "\nNombre: " + getNombre() + "\nApellido Paterno: " + getApellidoPaterno() + "\nApellido Materno: " + getApellidoMaterno() + "\nDomicilio: " + getDomicilio() + "\nEmail: " + getEmail() + "\nEdad: " + String(getEdad(fechaNacimiento: getFechaNacimiento())) + "\nEmpresa: " + getEmpresa() + "\nParentesco: " + getParentesco()
        return informacion
    }
}
