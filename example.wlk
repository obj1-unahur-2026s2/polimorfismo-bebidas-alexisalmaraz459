object tito{
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10

// metodos de consulta.

method velocidad() {
  return bebidaConsumida.rendimientoQueOtorga(dosis,self)
  * 490 / peso
}

method peso() = peso

method esFeliz () = self.velocidad() >= 7

// metodos de indicacion

method consumir (cantidad,bebida){
  bebidaConsumida = bebida
  dosis = cantidad

}

method cambiarPeso(nuevoPeso) {peso = nuevoPeso}

}

object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30
  
method peso() = peso
method cambiarPeso(nuevoPeso) {peso = nuevoPeso}
method cumplirAnios() {edad += 1}
method consumir (cantidad,bebida){
  bebidaConsumida = bebida
  dosis = cantidad

}
method velocidad() {
  return ( bebidaConsumida.rendimientoQueOtorga(dosis,self)
  *490 / peso)- if(edad>30) 10 else 0
}

}



object whisky {


// metodos de consulta.

  method rendimientoQueOtorga(dosisConsumida,unDeportista){
    return 0.9 ** dosisConsumida
  }

}

object terere{


// metodos de consulta.

  method rendimientoQueOtorga(dosisTerere,unDeportista){
    return (0.1 * dosisTerere).max(1)
  }


}


object cianuro {


// metodos de consulta.

  method rendimientoQueOtorga(dosisCianuro, unDeportista){
    return if(tito.peso() > 70) tito.peso() *0.01 + dosisCianuro else 0

  }


}
