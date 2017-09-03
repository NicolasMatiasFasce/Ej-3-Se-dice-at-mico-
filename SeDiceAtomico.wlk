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

object plantaHidroelectrica{

	method produccionEnergetica(ciudad){

		return 2 * ciudad.caudalDelRio()

	}

}

object turbinaEolica{

	method produccion(ciudad){

		return 0.2 * ciudad.velocidadDelViento()

	}

}

object springfield{

	const velocidadDelViento = 10

	const riquezaDelSuelo = 0.9

	var centralesDeSpringfield = #{burns,exBosque,elSuspiro}

	var necesidadDeLaCiudad = 30

	var suministroElectrico = 10

	method centralesContaminantes(){

		return centralesDeSpringfield.filter({ centrales => centrales.contaminacion() })

	}

	method cubrioNecesidades(){

		return suministroElectrico > necesidadDeLaCiudad 

	}

	method estaEnElHorno(){

		return self.todasLasCentralesContaminan() || self.centralesAportanMasDel50()

	}

	method todasLasCentralesContaminan(){

		return centralesDeSpringfield.size() == self.centralesContaminantes().size()

	}

	method centralesAportanMasDel50(){

		return self.centralesContaminantes().sum({ planta => planta.produccionEnergetica(self) }) >= necesidadDeLaCiudad * 1.5

	}

	method laCentralQueMasProduce(){

		return centralesDeSpringfield.max({ centrales => centrales.produccionEnergetica(self) })

	}	

	method riquezaDelSuelo(){

		return riquezaDelSuelo

	}

	method velocidadDelViento(){

		return velocidadDelViento

	}

	method centrales(){

		return centralesDeSpringfield

	}

}
