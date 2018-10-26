//
//  Persona.swift
//  181023_CarlosFranciscoPerezCarrera_ArlenPena_Practica1
//
//  Created by Macbook on 23/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import Foundation

class Persona {
    var nombre: String
    var apellidoPaterno: String
    var apellidoMaterno: String
    var fechaNacimiento: String
    var domicilio: String
    var email: String
    
    init(nombre: String, apellidoPaterno: String, apellidoMaterno: String, fechaNacimiento: String, domicilio: String, email: String) {
        self.nombre = nombre
        self.apellidoPaterno = apellidoPaterno
        self.apellidoMaterno = apellidoMaterno
        self.fechaNacimiento = fechaNacimiento
        self.domicilio = domicilio
        self.email = email
    }
    
    func getNombre() -> String {
        return self.nombre
    }
    
    func getApellidoPaterno() -> String {
        return self.apellidoPaterno
    }
    
    func getApellidoMaterno() -> String {
        return self.apellidoMaterno
    }
    
    func getFechaNacimiento() -> String {
        return self.fechaNacimiento
    }
    
    func getDomicilio() -> String {
        return self.domicilio
    }
    
    func getEmail() -> String {
        return self.email
    }
    
    func getEdad(fechaNacimiento: String) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        let fechaActual = formatter.string(from: Date())
        var fechaUno = fechaActual.components(separatedBy: "-")
        var fechaDos = fechaNacimiento.components(separatedBy: "/")
        let uno : Int = Int(fechaUno[2])!
        let dos : Int = Int(fechaDos[2])!
        return uno - dos
    }
    
    func getInformacion() -> String {
        let informacion: String = "\nNombre: " + getNombre() + "\nApellido Paterno: " + getApellidoPaterno() + "\nApellido Materno: " + getApellidoMaterno() + "\nDomicilio: " + getDomicilio() + "\nEmail: " + getEmail() + "\nEdad: " + String(getEdad(fechaNacimiento: getFechaNacimiento()))
        return informacion
    }
}
