import mensajeros.*
import ciudades.*
import vehiculos.*

object mensajeria{
    const mensajeros = []
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
}