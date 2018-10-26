//
//  ContactosController.swift
//  181025_CarlosFranciscoPerezCarrera_ArlenPeña_Practica3
//
//  Created by Macbook on 25/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var arrayContactos: [Contacto] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayContactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tbContactos.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text = arrayContactos[indexPath.row].nombre
        celda.detailTextLabel?.text = String(arrayContactos[indexPath.row].getEdad(fechaNacimiento: arrayContactos[indexPath.row].fechaNacimiento)) + " " + arrayContactos[indexPath.row].empresa + " " + arrayContactos[indexPath.row].parentesco
        
        return celda;
    }
    

    @IBOutlet weak var tbContactos: UITableView!
    
    override func viewDidLoad() {
        var futbol = Evento(fecha: "10/10/2018", hora: "22:00", descripcion: "Futbol")
        var natacion = Evento(fecha: "10/10/2018", hora: "10:00", descripcion: "Natación")
        var cena = Evento(fecha: "10/10/2018", hora: "22:00", descripcion: "Cena")
        var baile = Evento(fecha: "10/10/2018", hora: "23:00", descripcion: "Baile")
        var gym = Evento(fecha: "10/10/2018", hora: "06:00", descripcion: "Gym")
        
        var eventosUno = [futbol, natacion]
        var eventosDos = [cena]
        var eventosTres: [Evento] = [gym]
        var eventosCuatro: [Evento] = [baile]
        
        var contactoUno = Contacto(nombre: "Misael", apPaterno: "Silva", apMaterno: "Gonzalez", fechaNacimiento: "23/02/1993", direccion: "NA", email: "misael@elektra.com", empresa: "Grupo Salinas", parentesco: "Amigo", eventos: eventosUno)
        var contactoDos = Contacto(nombre: "Jorge", apPaterno: "Sanchez", apMaterno: "Pacheco", fechaNacimiento: "18/10/1993", direccion: "NA", email: "jorge@elektra.com", empresa: "Grupo Salinas", parentesco: "Amigo", eventos: eventosDos)
        var contactoTres = Contacto(nombre: "Carlos", apPaterno: "Perez", apMaterno: "Carrera", fechaNacimiento: "01/01/1993", direccion: "NA", email: "carlos@elektra.com", empresa: "Grupo Salinas", parentesco: "Amigo", eventos: eventosTres)
        var contactoCuatro = Contacto(nombre: "Luis", apPaterno: "Hernandez", apMaterno: "Diaz", fechaNacimiento: "21/09/1993", direccion: "NA", email: "luis@elektra.com", empresa: "Grupo Salinas", parentesco: "Hermano", eventos: eventosCuatro)
        
        arrayContactos = [contactoUno, contactoDos, contactoTres, contactoCuatro]
        
        super.viewDidLoad()
        self.tbContactos.dataSource = self
        self.tbContactos.delegate = self
    }

}
