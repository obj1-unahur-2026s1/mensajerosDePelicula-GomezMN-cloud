import mensajeros.*
import ciudades.*
import vehiculos.*

object mensajeria{
    const mensajeros = []
    const paquetesAEnviar = []

    var ciudadAEntregarActual = kholinar
    method mensajeros(){
        return mensajeros
    }
    method contratarMensajero(mensajero){
        mensajeros.add(mensajero)
    }
    method despedirMensajero(mensajero){
        mensajeros.remove(mensajero)
    }
    method despedirTodosLosMensajeros(){
        mensajeros.removeAll(mensajeros)
    }
    method esGrande(){
        return mensajeros.size() > 2
    }
    method primerMensajeroPuedeEntregar(){
        return mensajeros.first().realizarEntrega(ciudadAEntregarActual)
    }
    method pesoDelUltimoMensajero(){
        return mensajeros.last().peso()
    }
    method nuevaCiudadAEntregar(nuevaCiudad){
        ciudadAEntregarActual = nuevaCiudad
    }
    method agregarPaquete(paquete){
        paquetesAEnviar.add(paquete)
    }
    method mensajerosCapacesDeLlevarElPaquete(){
        mensajeros.filter(mensajero.realizarEntrega())
    }
}

object paquetito {
    method estaPago(){
        return true
    }
    method peso() = 5
}

object paquetonViajero {
    var valorAPagar = 100 
    const destinos = []

    method nuevoViaje(){
        valorAPagar = 100
        destinos.removeAll(destinos)
    }
    method agregarDestino(nuevoDestino){
        destinos.add(nuevoDestino)
    }
    method pagar(cantidad){
        valorAPagar -= cantidad.max(0)
    }
    method valorAPagar(){
        return valorAPagar * destinos.size()
    }
    method estaPago() {
        return valorAPagar == 0
    }
    method peso(){
        return 300
    }
    method sePuedeEntregarEnCadaDestino(mensajero){
        return destinos.fold(true, {acum, item =>acum && mensajero.realizarEntrega(item)} )
    }
    method sePuedeEnviar(mensajero){
        return self.estaPago() && self.sePuedeEntregarEnCadaDestino(mensajero)
    }
}
object paquete {
    var valorAPagar = 50 

    method precio(){
        return 50
    }
    method peso(){
        return 5
    }
    method estaPago() {
        return valorAPagar == 0
    }
    method pagar(cantidad){
        valorAPagar -= cantidad.max(0)
    }
    method nuevoViaje(){
        valorAPagar = 50
    }
}
