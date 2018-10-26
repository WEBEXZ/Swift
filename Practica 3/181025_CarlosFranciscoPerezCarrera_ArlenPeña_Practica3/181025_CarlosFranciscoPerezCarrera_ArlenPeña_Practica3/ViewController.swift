//
//  ViewController.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var textApPaterno: UITextField!
    @IBOutlet weak var txtApMaterno: UITextField!
    @IBOutlet weak var txtFechaNacimiento: UIDatePicker!
    @IBOutlet weak var txtDomicilio: UITextView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtEmpresa: UITextField!
    @IBOutlet weak var txtParentesco: UITextField!
    @IBOutlet weak var btnEnviar: UIButton!
    
    @IBAction func eventEnviar(_ sender: Any) {
        if txtNombre.text!.isEmpty ||
            textApPaterno.text!.isEmpty ||
            txtApMaterno.text!.isEmpty ||
            txtDomicilio.text!.isEmpty ||
            txtEmail.text!.isEmpty ||
            txtEmpresa.text!.isEmpty ||
            txtParentesco.text!.isEmpty {
            let alerta: UIAlertController = UIAlertController.init(title: "Mensaje de la aplicación", message: "Existen campos que se encuentran vacios", preferredStyle: UIAlertController.Style.alert)
            let okAlerta: UIAlertAction = UIAlertAction.init(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
            alerta.addAction(okAlerta)
            present(alerta, animated: true, completion: nil)
        } else {
            if !txtEmail.text!.contains("@") {
                let alerta: UIAlertController = UIAlertController.init(title: "Mensaje de la aplicación", message: "El campo de email no es válido", preferredStyle: UIAlertController.Style.alert)
                let okAlerta: UIAlertAction = UIAlertAction.init(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
                alerta.addAction(okAlerta)
                present(alerta, animated: true, completion: nil);
            } else {
                let alerta: UIAlertController = UIAlertController.init(title: "Mensaje de la aplicación", message: "Se guardo el contacto", preferredStyle: UIAlertController.Style.alert)
                let okAlerta: UIAlertAction = UIAlertAction.init(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
                alerta.addAction(okAlerta)
                present(alerta, animated: true, completion: nil);
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

