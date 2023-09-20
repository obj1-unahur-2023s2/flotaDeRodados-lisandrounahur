
class Corsa {
	var property color
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
}

class Kwid {
	var property tanqueAdicional = false
	method capacidad() = if(tanqueAdicional){3} else {4}
	method velocidadMaxima() = if(tanqueAdicional) {120} else {110}
	method peso() = if(tanqueAdicional) {1350} else {1200}
	method color() = "azul" // cambiar por objecto
}

object trafic {
	var property esMotorPolenta = false
	var property esInteriorComodo = false
	method color() = "blanco"
	method capacidad() = if(esInteriorComodo){5} else {12}
	method pesoMotor() = if(esMotorPolenta){800} else {500}
	method pesoInterior() = if(esInteriorComodo){700} else {1000}
	method peso() = 4000 + self.pesoMotor() + self.pesoInterior()
	method velocidadMaxima() = if(esMotorPolenta) {130} else {80}
}

object traficProfe {
	var property interior
	var property motor
	method color() = "blanco"
	method capacidad() = interior.capacidad()
	method peso() = 4000 + motor.peso() + interior.peso()
	method velocidadMaxima() = motor.velocidad()
	method configurar(unInterior,unMotor){
		interior = unInterior
		motor = unMotor
	}
}

object motorBataton {
	method peso() = 500
	method velocidad() = 80
}

object motorPulenta {
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

class AutoEspecial {
	const capacidad
	const velocidad
	const peso
	var property color
	method capacidad() = capacidad
	method velocidadMaxima() = velocidad
	method peso() = peso 
}
