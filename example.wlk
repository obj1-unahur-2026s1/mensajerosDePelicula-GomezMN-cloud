object roberto {
    var peso = 60
    var vehiculo = bicicleta

    method peso() {
        return peso
    }
    method pesoTotal() {
        return self.peso() + vehiculo.peso()
    }
    method aumentarPeso(aumento){
        peso += aumento
    }
    method bajarPeso(disminucion){
        peso -= disminucion
    }
    method cambiarVehiculo(nuevoVehiculo){
        vehiculo = nuevoVehiculo
    }
    method realizarEntrega(){

    }
}
object chuckNorris {
    method peso(){
        return 80
    }
}
object bicicleta {
    method peso(){
        return 5
    }
}
object camion {
    var cantidadAcopladoActual = 1
    method peso(){
        return 500 + (self.pesoAcoplado() * cantidadAcopladoActual)
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