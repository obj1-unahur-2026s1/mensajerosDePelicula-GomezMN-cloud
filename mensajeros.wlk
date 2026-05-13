import ciudades.*
import vehiculos.*
object roberto {
    var peso = 60
    var vehiculo = camion
    var tieneTelefono = false
    const paquete = [manzana]

    method peso() {
        return peso + vehiculo.peso() + self.pesoTotalDeLosPaquetes()
    }
    method puedeLlamar(){
        return tieneTelefono
    }
    method paquete(){
        return paquete
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
    method conseguirTelefono(){
        tieneTelefono = true
    }
    method realizarEntrega(ciudad){
        return ciudad.permitirPaso(self) && self.primerPaquete().estaPago()
    }
    method primerPaquete(){
        return paquete.first()
    }
    method pesoTotalDeLosPaquetes(){
        return paquete.sum({p => p.peso()})
    }

}
object chuckNorris {
    const paquete = [manzana]

    method peso(){
        return 80 + paquete.peso()
    }
    method puedeLlamar(){
        return true
    }
    method realizarEntrega(ciudad){
        return ciudad.permitirPaso(self) && self.primerPaquete().estaPago()
    }
    method primerPaquete(){
        return paquete.first()
    }
    method pesoTotalDeLosPaquetes(){
        return paquete.sum({p => p.peso()})
    }
}
object neo {
    const paquete = [manzana]
    var tieneCredito = 30

    method peso(){
        return 0 + self.pesoTotalDeLosPaquetes()
    }
    method puedeLlamar(){
        return tieneCredito > 10
    }
    method realizarLlamada(){
        tieneCredito -= 10
    }
    method realizarEntrega(ciudad){
        return ciudad.permitirPaso(self) && self.primerPaquete().estaPago()
    }
    method primerPaquete(){
        return paquete.first()
    }
    method pesoTotalDeLosPaquetes(){
        return paquete.sum({p => p.peso()})
    }
    method pesoPrimerPaquete(){
        return paquete.first().peso()
    }
}

object manzana {
    var situacionDeEntrega = "no Entregado"
    var estaPago = false
    method estaPago() {
        return estaPago
    }
    method entregar(){
        situacionDeEntrega = "Entregado"
    }
    method peso(){
        return 300
    }
    method pagarPaquete(){
        estaPago = true
    }
}