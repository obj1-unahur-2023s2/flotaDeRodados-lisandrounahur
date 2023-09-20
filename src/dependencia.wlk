import rodados.*

class Dependencia {
	var property cantidadEmpleados = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota() = rodados.sum({rodado => rodado.peso()})
	
	method todosSuperanXVelocidad(velocidad) = rodados.all({rodado => rodado.velocidadMaxima() >= velocidad})
	
	method estaBienEquipada() = rodados.size() >= 3 and self.todosSuperanXVelocidad(100)
	
	method rodadosDeUnColor(color) = rodados.filter({ rodado => rodado.color() == color })
	
	method capacidadTotalEnColor(color) = self.rodadosDeUnColor(color).sum({rodado => rodado.capacidad()})
	
	method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
	
	method rodadoMasRapido() {
		if(rodados.isEmpty()){
			self.error("No hay rodados en la lista")
		}
		return rodados.max({r => r.velocidad()})
	}
	
	method capacidadDeLaFlota() = rodados.sum({rodado => rodado.capacidad()})
	
	method capacidadFaltante() = return 0.max(cantidadEmpleados - self.capacidadDeLaFlota())
	
	method esGrande() = rodados.size() >= 5 and cantidadEmpleados >= 40
	
	
}