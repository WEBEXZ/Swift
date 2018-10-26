//
//  ViewController.swift
//  181026_CarlosFranciscoPerezCarrera_ArlenPaña_ProyectoFinal
//
//  Created by Macbook on 26/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let elementos = Conversor()
    var de: Int = 0
    var a: Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return elementos.descripciones.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return component == 0 ? elementos.descripciones[row] : elementos.descripciones[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            de = row + 1
        } else if component == 1 {
            a = row + 1
        }
    }
    
    @IBOutlet weak var txtDistancia: UITextField!
    @IBOutlet weak var pvInicial: UIPickerView!
    @IBOutlet weak var txtResultado: UITextField!
    
    @IBAction func btnConvertir(_ sender: Any) {
        let distancia = Float(txtDistancia.text!)
        let valor = elementos.convertirUnidades(distancia: distancia!, de: de, a: a)
        txtResultado.text = String(valor)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pvInicial.dataSource = self
        self.pvInicial.delegate = self
    }
}
