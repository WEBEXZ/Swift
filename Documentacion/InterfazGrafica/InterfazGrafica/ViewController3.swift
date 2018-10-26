//
//  ViewController3.swift
//  InterfazGrafica
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var autos: [String] = ["Sentra", "Civic", "Tsuru", "Gol"]
    var marcas: [String] = ["Nissan", "Honda", "Nissan", "VW"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == 0 ? autos.count : marcas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return component == 0 ? autos[row] : marcas[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var x = component == 0 ? print(autos[row]) : print(marcas[row])
    }

    @IBOutlet weak var pkAutos: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pkAutos.dataSource = self
        self.pkAutos.delegate = self
    }
}
