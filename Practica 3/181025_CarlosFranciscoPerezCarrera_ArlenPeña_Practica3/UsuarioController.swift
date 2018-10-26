//
//  UsuarioController.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class UsuarioController: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApPaterno: UITextField!
    @IBOutlet weak var txtApMaterno: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtDomicilio: UITextView!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidLoad() {
        let propietario = Persona(nombre: "Carlos Francisco", apPaterno: "Pérez", apMaterno: "Carrera", fechaNacimiento: "15/09/1994", direccion: "Calzada de Tlalpan #87 Ciudad de México", email: "cfperez@elektra.com.mx")
        
        super.viewDidLoad()
        txtNombre.isEnabled = false
        txtApPaterno.isEnabled = false
        txtApMaterno.isEnabled = false
        txtEdad.isEnabled = false
        txtDomicilio.isEditable = false
        txtEmail.isEnabled = false
        
        txtNombre.text = propietario.nombre
        txtApPaterno.text = propietario.apPaterno
        txtApMaterno.text = propietario.apMaterno
        txtEdad.text =  String(propietario.getEdad(fechaNacimiento: propietario.fechaNacimiento))
        txtDomicilio.text = propietario.direccion
        txtEmail.text = propietario.email
    }
}
