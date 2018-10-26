//
//  ViewController.swift
//  181024_CarlosFranciscoPerezCarrera_ArlenPeña_Practica2
//
//  Created by Macbook on 24/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtRespuesta: UILabel!
    
    @IBAction func btnAcceder(_ sender: UIButton) {
        txtRespuesta.text = "Usuario no registrado"
    }
    
    @IBAction func btnSocial(_ sender: UIButton) {
        txtRespuesta.text = "Problemas de conexion"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

