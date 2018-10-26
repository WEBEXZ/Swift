//
//  ListaEventoController.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ListaEventoController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var eventos: [Evento] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tbEventos.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel?.text = eventos[indexPath.row].descripcion
        celda.detailTextLabel?.text = eventos[indexPath.row].fecha + " " + eventos[indexPath.row].hora
        return celda
    }
    
    @IBOutlet weak var tbEventos: UITableView!
    
    override func viewDidLoad() {
        var futbol = Evento(fecha: "10/10/2018", hora: "22:00", descripcion: "Futbol")
        var natacion = Evento(fecha: "10/10/2018", hora: "10:00", descripcion: "Natación")
        var cena = Evento(fecha: "10/10/2018", hora: "22:00", descripcion: "Cena")
        var baile = Evento(fecha: "10/10/2018", hora: "23:00", descripcion: "Baile")
        var gym = Evento(fecha: "10/10/2018", hora: "06:00", descripcion: "Gym")
        
        eventos = [futbol, natacion, cena, baile, gym]
        
        super.viewDidLoad()
        self.tbEventos.dataSource = self
        self.tbEventos.delegate = self
    }
}
