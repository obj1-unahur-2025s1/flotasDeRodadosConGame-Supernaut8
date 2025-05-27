class Pedido {
    var property distancia 
    var property tiempoMax 
    var property cantidadDePasajeros
    const property coloresIncompatibles = []

    method initialize() {
        if(!distancia.between(1, 1000))
            self.error(distancia.toString() + "no es valida")
        if(!tiempoMax.between(1, 100))
            self.error(tiempoMax.toString() + "no es valido")
        if(!cantidadDePasajeros.between(1, 100))
            self.error(cantidadDePasajeros.toString() + "no es valido")
    }
    method velocidadRequerida () = self.distancia() / self.tiempoMax()
    method pedidoPuedeSerResueltoPor(unAuto) = 
        unAuto.velocidadMaxima() >= 10 + self.velocidadRequerida()
        &&
        unAuto.capacidad() >= self.cantidadDePasajeros()
        &&
        !coloresIncompatibles.contains(unAuto.color())
    method agregarColorIncompatible(unColor) {
        if(!coloresIncompatibles.coloresIncompatibles().contains(unColor))
            self.error(unColor.toString() + "no es valido")
        coloresIncompatibles.add(unColor)
    }
    method acelerar() {
        tiempoMax -= 1
    }
    method relajar() {
        tiempoMax += 1
    }
}