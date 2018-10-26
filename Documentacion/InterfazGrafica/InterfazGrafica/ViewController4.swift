//
//  ViewController4.swift
//  InterfazGrafica
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var uniformes: [String] =  ["Botas", "Espinilleras", "Casco"]
    var herramientas: [String] = ["Impresora", "Ipad", "Moto"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Uniformes" : "Herramientas"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? uniformes.count : herramientas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        if indexPath.section == 0 {
            celda.textLabel?.text = uniformes[indexPath.row]
            celda.detailTextLabel?.text = "Solicitado"
        } else {
            celda.textLabel?.text = herramientas[indexPath.row]
            celda.detailTextLabel?.text = "Solicitado"
        }
        return celda
    }
    

    @IBOutlet weak var tbAutos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tbAutos.dataSource = self
        self.tbAutos.delegate = self
    }

}
