//
//  File.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//
import Foundation

class Persona {
    var nombre: String
    var apPaterno: String
    var apMaterno: String
    var fechaNacimiento: String
    var direccion: String
    var email: String
    
    init(nombre: String, apPaterno: String, apMaterno: String, fechaNacimiento: String, direccion: String, email: String) {
        self.nombre = nombre
        self.apPaterno = apPaterno
        self.apMaterno = apMaterno
        self.fechaNacimiento = fechaNacimiento
        self.direccion = direccion
        self.email = email
    }
    
    func getNombre() -> String {
        return nombre
    }
    
    func getApPaterno() -> String {
        return apPaterno
    }
    
    func getApMaterno() -> String {
        return apMaterno
    }
    
    func getFechaNacimiento() -> String {
        return fechaNacimiento
    }
    
    func getDireccion() -> String {
        return direccion
    }
    
    func getEmail() -> String {
        return email
    }
    
    func getEdad(fechaNacimiento: String) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let fechaActual  = formatter.string(from: Date())
        var arrayFechaActual = fechaActual.components(separatedBy: "/")
        let añoActual = Int(arrayFechaActual[2])!
        var arrayFecha = fechaNacimiento.components(separatedBy: "/")
        let año = Int(arrayFecha[2])!
        return añoActual - año
    }
    
    func getInformacion() -> String {
        return "Nombre: " + getNombre() + " " + getApPaterno() + " " + getApMaterno() + "\nDireccion: " + getDireccion() + "\nEmail: " + getEmail() + "\nCumpleaños: " + getFechaNacimiento() + "\nEdad: " + String(getEdad(fechaNacimiento: getFechaNacimiento()))
    }
}
