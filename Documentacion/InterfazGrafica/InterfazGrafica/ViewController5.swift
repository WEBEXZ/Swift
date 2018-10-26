//
//  ViewController5.swift
//  InterfazGrafica
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var herramientas: [String] = ["Ipad", "Impresora", "Moto"]
    var estatus: [String] = ["Robo", "Siniestro", "Accidente"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return herramientas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! tableViewCelda
        
        celda.cldHerramientas.text = herramientas[indexPath.row]
        celda.cldEstatus.text = estatus[indexPath.row]
        
        return celda
    }
    
    @IBOutlet weak var tbSolicitudes: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbSolicitudes.dataSource = self
        self.tbSolicitudes.delegate = self
    }
}
