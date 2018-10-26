//
//  EventoController.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class EventoController: UIViewController {

    @IBOutlet weak var txtEvento: UITextField!
    
    @IBAction func eventEnviar(_ sender: UIButton) {
        if txtEvento.text!.isEmpty {
            let alerta: UIAlertController = UIAlertController.init(title: "Mensaje de la aplicación", message: "Existen campos vacios", preferredStyle: UIAlertController.Style.alert)
            let okAlerta: UIAlertAction = UIAlertAction.init(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
            alerta.addAction(okAlerta)
            present(alerta, animated: true, completion: nil);
        } else {
            let alerta: UIAlertController = UIAlertController.init(title: "Mensaje de la aplicación", message: "Contacto guardado", preferredStyle: UIAlertController.Style.alert)
            let okAlerta: UIAlertAction = UIAlertAction.init(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
            alerta.addAction(okAlerta)
            present(alerta, animated: true, completion: nil);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
