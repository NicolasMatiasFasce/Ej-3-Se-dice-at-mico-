object burns {

	var millonesDeVarillasDeUranio = 1

	method produccionEnergetica(ciudad){	

		return 0.1 * millonesDeVarillasDeUranio

	}

	method contaminacion(){

		return millonesDeVarillasDeUranio> 20

	}

	method varillasDeUranio(){

		return millonesDeVarillasDeUranio

	}

	method varillasDeUranio(nuevaCantidadDeVarillas){

		millonesDeVarillasDeUranio = nuevaCantidadDeVarillas

	}

}

object exBosque {

	var capacidad = 1

	method produccionEnergetica(ciudad){	

		return 0.5 + capacidad * ciudad.riquezaDelSuelo()

	}

	method contaminacion(){

		return true

	}

	method capacidad(){

		return capacidad

	}

	method capacidad(nuevaCapacidad){

		capacidad = nuevaCapacidad

	}	

}

object elSuspiro {

	var turbinas = [turbinaEolica]

	method produccionEnergetica(ciudad){

		return turbinas.sum({ turbina => turbina.produccion(ciudad) })

	}

	method contaminacion(){

		return false

	}

	method turbinas(){

		return turbinas

	}

	method turbinas(nuevaTurbina){

		turbinas.add(nuevaTurbina)

	}

}
