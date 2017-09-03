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
