//: Mini Reto 2

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 , VelocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    var velociodadEnCadena : String {
        switch self {
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "VelocidadAlta"
        default:
            return "No existe velocidad"
        }
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        let actual = self.velocidad
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        default:
            print("Sin valor")
        }
        
        return (actual.rawValue, actual.velociodadEnCadena)
        
    }
}

var miAuto = Auto()

for i in 1...20{
    var respuesta = miAuto.cambioDeVelocidad()
    print("\(respuesta.actual), \(respuesta.velocidadEnCadena)")
}
