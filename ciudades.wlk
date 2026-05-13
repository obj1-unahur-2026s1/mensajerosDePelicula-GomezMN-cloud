object kholinar {
    method permitirPaso(mensajero){
        return mensajero.peso() <= 1000
    }

}
object thaylen {
    method permitirPaso(mensajero){
        return mensajero.puedeLlamar()
    }
}