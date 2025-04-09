object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}

	method validarVolar(distancia) {
		if(energia < energia+10+distancia){
			self.error("Pepita no puede volar esa distancia.")
		}
	}
	
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - 10 - distancia
	}
		
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	var ultimaComida = manzana
	
	method energia() {
		return energia
	}

	method validarComida(comida) {
		if(comida == ultimaComida){
			self.error("Pepon ya comio esa comida la ultima vez")
		}
	}
		
	method comer(comida) {
		self.validarComida(comida)
		energia = energia + comida.energiaQueAporta() / 2
		ultimaComida = comida
	}

	method energiaParaVolar(distancia) {
		return(energia + 20 + 2*distancia)
	}

	method validarVolar(distancia) {
		if(energia < self.energiaParaVolar(distancia)){
			self.error("Pepon no puede volar esa distancia")
		}
	}
		
	method volar(distancia) {
		self.validarVolar(distancia)
		energia = energia - 20 - 2*distancia
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}

	method cenas() {
		return(cenas)
	}
}

