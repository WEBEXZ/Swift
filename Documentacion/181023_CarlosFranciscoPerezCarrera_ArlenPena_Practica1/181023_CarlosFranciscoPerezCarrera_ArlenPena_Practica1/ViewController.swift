//
//  ViewController.swift
//  181023_CarlosFranciscoPerezCarrera_ArlenPena_Practica1
//
//  Created by Macbook on 23/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let dueño = Persona(nombre: "Carlos", apellidoPaterno: "Perez", apellidoMaterno: "Carrera", fechaNacimiento: "15/09/1994", domicilio: "N/A", email: "cfperez@elektra.com")
        let contactoUno = Persona(nombre: "Luis", apellidoPaterno: "Vazquez", apellidoMaterno: "Lopez", fechaNacimiento: "18/04/1992", domicilio: "N/A", email: "lvazquez@gmail.com")
        let contactoDos = Persona(nombre: "Jorge", apellidoPaterno: "Cabrera", apellidoMaterno: "Quiroz", fechaNacimiento: "18/04/1992", domicilio: "N/A", email: "mgyquy@gmail.com")
        let contactoTres = Persona(nombre: "Alberto", apellidoPaterno: "Sanchez", apellidoMaterno: "Suarez", fechaNacimiento: "28/04/1992", domicilio: "N/A", email: "251gS@gmail.com")
        let contactoCuatro = Persona(nombre: "Miguel", apellidoPaterno: "Vazquez", apellidoMaterno: "Garcia", fechaNacimiento: "08/04/1992", domicilio: "N/A", email: "ioljka@gmail.com")
        let contactoCinco = Persona(nombre: "Fernando", apellidoPaterno: "Muñoz", apellidoMaterno: "Juarez", fechaNacimiento: "10/12/1992", domicilio: "N/A", email: "ytrqe@gmail.com")
        let contactoSeis = Persona(nombre: "Francisco", apellidoPaterno: "Perez", apellidoMaterno: "Carrera", fechaNacimiento: "10/12/2000", domicilio: "N/A", email: "ytrqe@gmail.com")
        
        let c1 = Contacto(persona: contactoUno, empresa: "Grupo Salinas", parentesco: "Ninguno")
        let c2 = Contacto(persona: contactoDos, empresa: "Grupo Salinas", parentesco: "Ninguno")
        let c3 = Contacto(persona: contactoTres, empresa: "Grupo Salinas", parentesco: "Ninguno")
        let c4 = Contacto(persona: contactoCuatro, empresa: "Grupo Salinas", parentesco: "Ninguno")
        let c5 = Contacto(persona: contactoCinco, empresa: "Grupo Salinas", parentesco: "Ninguno")
        let c6 = Contacto(persona: contactoSeis, empresa: "Grupo Salinas", parentesco: "Hermano")
        
        
        let contactos :[Contacto] = [c1, c2, c3, c4, c5, c6]
        
        let android = Dispositivo(persona: dueño, contactos: contactos)
        
        
        //print("Edad: ", dueño.getEdad(fechaNacimiento: dueño.getFechaNacimiento()))
        print("Informacion del dueño: ", dueño.getInformacion())
        
        print("\nContactos: ")
        android.getInformacion()
        
        print("\nParentesco: ")
        for x in android.findParentesco(parentesco: "Hermano") {
            print(x.getInformacionContacto())
        }
        
        super.viewDidLoad()
    }


}

