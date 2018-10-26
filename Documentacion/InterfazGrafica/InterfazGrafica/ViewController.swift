//
//  ViewController.swift
//  InterfazGrafica
//
//  Created by Macbook on 24/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    
    @IBAction func txtEntrada(_ sender: UITextField) {
        lblNombre.text = sender.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 85, y: 50, width: 200, height: 50))
        label.textAlignment = .center
        label.text = "Herramientas de Trabajo"
        label.layer.borderWidth = 1
        self.view.addSubview(label)
        
        lblNombre.layer.borderWidth = 1
        lblNombre.textColor = .blue
        
        // MARK:- Generar boton
        let button = UIButton()
        button.frame = CGRect(x: 85, y: 260, width: 200, height: 50)
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Send ", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
        
        // MARK:- Generar text field
        let textField = UITextField(frame: CGRect(x: 85, y: 200, width: 200, height: 50))
        textField.textAlignment = .center
        textField.textColor = .red
        textField.borderStyle = .bezel
        textField.placeholder = "Empleado"
        self.view.addSubview(textField)
    }
    
    @objc func buttonAction() {
        lblNombre.text = "Touch!"
    }


}

