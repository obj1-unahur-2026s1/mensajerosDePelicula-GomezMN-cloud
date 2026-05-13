object bicicleta {
    method peso(){
        return 5
    }
}
object camion {
    var cantidadAcopladoActual = 1
    method peso(){
        return 300 + (self.pesoAcoplado() * cantidadAcopladoActual)
    }
    method pesoAcoplado(){
        return 500 
    }
    method sumarAcoplado(){
        cantidadAcopladoActual += 1
    }
    method quitarAcoplado(){
        cantidadAcopladoActual -= 1.max(0)
    }
}