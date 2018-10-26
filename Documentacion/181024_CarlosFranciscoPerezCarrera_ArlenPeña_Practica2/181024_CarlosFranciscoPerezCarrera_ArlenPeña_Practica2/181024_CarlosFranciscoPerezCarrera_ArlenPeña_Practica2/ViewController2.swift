//
//  ViewController2.swift
//  181024_CarlosFranciscoPerezCarrera_ArlenPeña_Practica2
//
//  Created by Macbook on 24/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var txtTerminos: UITextView!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPassword2: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtFechaNace: UITextField!
    @IBOutlet weak var swTerminos: UISwitch!
    @IBOutlet weak var btnEnviarU: UIButton!
    
    @IBAction func validaSw(_ sender: UISwitch) {
        if !swTerminos.isOn {
            btnEnviarU.isEnabled = false
        } else {
            btnEnviarU.isEnabled = true
        }
    }
    
    @IBAction func btnEnviar(_ sender: UIButton) {
        if !swTerminos.isOn {
            btnEnviarU.isEnabled = false
        } else {
            btnEnviarU.isEnabled = true
        }
    }
    @IBAction func validaPassword(_ sender: UITextField) {
        if (txtPassword.text?.isEmpty)! {
            txtPassword.backgroundColor = .red
        } else {
            txtPassword.backgroundColor = .white
        }
    }
    @IBAction func validaPassword2(_ sender: UITextField) {
        if (txtPassword2.text?.isEmpty)! {
            txtPassword2.backgroundColor = .red
        } else {
            txtPassword2.backgroundColor = .white
        }
        
        if (txtPassword.text != txtPassword2.text) {
            txtPassword2.backgroundColor = .yellow
        } else {
            txtPassword2.backgroundColor = .white
        }
    }
    @IBAction func validaSexo(_ sender: UITextField) {
        if (txtSexo.text?.isEmpty)! {
            txtSexo.backgroundColor = .red
        } else {
            txtSexo.backgroundColor = .white
        }
    }
    @IBAction func validaFecha(_ sender: UITextField) {
        if (txtFechaNace.text?.isEmpty)! {
            txtFechaNace.backgroundColor = .red
        } else {
            txtFechaNace.backgroundColor = .white
        }
    }
    
    
    @IBAction func validaNombre(_ sender: UITextField) {
        if (txtNombre.text?.isEmpty)! {
            txtNombre.backgroundColor = .red
        } else {
            txtNombre.backgroundColor = .white
        }
    }
    @IBAction func validaEmail(_ sender: UITextField) {
        let email = sender.text!
        
        if !email.contains("@") {
            txtEmail.backgroundColor = .red
        } else {
            txtEmail.backgroundColor = .white
        }
        
    }
    @IBAction func btnTerminos(_ sender: UIButton) {
        txtTerminos.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
