import Foundation

class Persona {
    var nombre: String
    var apPaterno: String
    var apMaterno: String
    var fechaNacimiento: String
    var direccion: String
    var email: String
    
    init(nombre: String, apPaterno: String, apMaterno: String, fechaNacimiento: String, direccion: String, email: String) {
        self.nombre = nombre
        self.apPaterno = apPaterno
        self.apMaterno = apMaterno
        self.fechaNacimiento = fechaNacimiento
        self.direccion = direccion
        self.email = email
    }
    
    func getNombre() -> String {
        return nombre
    }
    
    func getApPaterno() -> String {
        return apPaterno
    }
    
    func getApMaterno() -> String {
        return apMaterno
    }
    
    func getFechaNacimiento() -> String {
        return fechaNacimiento
    }
    
    func getDireccion() -> String {
        return direccion
    }
    
    func getEmail() -> String {
        return email
    }
    
    func getEdad(fechaNacimiento: String) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let fechaActual  = formatter.string(from: Date())
        var arrayFechaActual = fechaActual.components(separatedBy: "/")
        let añoActual = Int(arrayFechaActual[2])!
        var arrayFecha = fechaNacimiento.components(separatedBy: "/")
        let año = Int(arrayFecha[2])!
        return añoActual - año
    }
    
    func getInformacion() -> String {
        return "Nombre: " + getNombre() + " " + getApPaterno() + " " + getApMaterno() + "\nDireccion: " + getDireccion() + "\nEmail: " + getEmail() + "\nCumpleaños: " + getFechaNacimiento() + "\nEdad: " + String(getEdad(fechaNacimiento: getFechaNacimiento()))
    }
}

class Evento {
    var fecha: String
    var hora: String
    var descripcion: String
    
    init(fecha: String, hora: String, descripcion: String) {
        self.fecha = fecha
        self.hora = hora
        self.descripcion = descripcion
    }
    
    func getFecha() -> String {
        return fecha
    }
    
    func getHora() -> String {
        return hora
    }
    
    func getDescripcion() -> String {
        return descripcion
    }
    
    func mostrarDetalleEvento() -> String {
        return "Evento: " + getDescripcion() + "\nFecha: " + getFecha() + "\nHora: " + hora
    }
    
}

class Contacto : Persona {
    var empresa: String
    var parentesco: String
    var eventos: [Evento]
    
    init(nombre: String, apPaterno: String, apMaterno: String, fechaNacimiento: String, direccion: String, email: String, empresa: String, parentesco: String, eventos: [Evento]) {
        self.empresa = empresa
        self.parentesco = parentesco
        self.eventos = eventos
        super.init(nombre: nombre, apPaterno: apPaterno, apMaterno: apMaterno, fechaNacimiento: fechaNacimiento, direccion: direccion, email: email)
        
    }
    
    func getEmpresa() -> String {
        return empresa
    }
    
    func getParentesco() -> String {
        return parentesco
    }
    
    func getDetalleContacto() -> String {
        return getInformacion() + "\nEmpresa: " + getEmpresa() + "\nParentesco: " + getParentesco()
    }
    
    func validaEventos() -> Int {
        var count = 1
        var salida = 1
        for evento in eventos {
            if count > (eventos.count - 1) {
                return salida
            } else if evento.getFecha() == eventos[count].getFecha() && evento.getHora() == eventos[count].getHora(){
                salida = 0
                break
            }
            count += 1
        }
        return salida
    }
}

class Agenda {
    var persona: Persona
    var contactos: [Contacto]
    
    init(persona: Persona, contactos: [Contacto]) {
        self.persona = persona
        self.contactos = contactos
    }
    
    func mostrarContactos() -> Void {
        print("************CONTACTOS**************")
        for contacto in contactos {
            print(contacto.getDetalleContacto())
            print("***********************************")
        }
    }
    
    func buscarContactos(parentesco: String) -> [Contacto] {
        var salida: [Contacto] = []
        for contacto in contactos {
            if contacto.getParentesco() == parentesco {
                salida.append(contacto)
            }
        }
        return salida
    }
}

//Implementacion
var personaUno = Persona(nombre: "Manuel", apPaterno: "Hernandez", apMaterno: "Diaz", fechaNacimiento: "23/12/1993", direccion: "NA", email: "manuel@elektra.com")
print(personaUno.getEdad(fechaNacimiento: personaUno.getFechaNacimiento()))
print(personaUno.getInformacion())

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
print(contactoUno.getDetalleContacto())

var arrayContactos = [contactoUno, contactoDos, contactoTres, contactoCuatro]

var agenda = Agenda(persona: personaUno, contactos: arrayContactos)
agenda.mostrarContactos()

print("*****BUSCANDO*****")
var resultado = agenda.buscarContactos(parentesco: "Hermano")
if resultado.isEmpty {
    print("No se encontraron coincidencias")
} else {
    for contacto in resultado {
        print(contacto.getInformacion())
    }
}

print("*****DETALLE EVENTO UNO*****")
for evento in eventosUno {
    print(evento.mostrarDetalleEvento())
}

print("*****EVENTOS CON CONTACTOS*****")
for contacto in agenda.contactos {
    print("Contacto: ", contacto.getNombre())
    if contacto.validaEventos() == 0 {
        print("Existen eventos en el mismo dia")
    } else {
        for evento in contacto.eventos {
            print("Evento: ", evento.getDescripcion())
        }
    }
}
