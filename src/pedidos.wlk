class Pedido {
	const property distancia
	const property tiempoMaximo
	const property cantidadPasajeros
	const property pasajeros
	const coloresIncompatibles = #{}
	
	method velocidadRequerida() = distancia / tiempoMaximo
	
	method esDeColorCompatible(color){
		return !coloresIncompatibles.contains(color)
	}
	
	method puedeSerSatisfechoPor(unRodado){
		return unRodado.velocidadMaxima() >= self.velocidadRequerida() + 10 and unRodado.capacidad() >= pasajeros and self.esDeColorCompatible(unRodado.color()) 
	}
}
