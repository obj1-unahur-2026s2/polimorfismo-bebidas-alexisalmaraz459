object tito{
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10

// metodos de consulta.

method velocidad() {
  return bebidaConsumida.rendimientoQueOtorga(dosis)
  * 490 / peso
}

method peso() = peso



// metodos de indicacion

method consumir (cantidad,bebida){
  bebidaConsumida = bebida
  dosis = cantidad

}

method cambiarPeso(nuevoPeso) {peso = nuevoPeso}

}


object whisky {


// metodos de consulta.

  method rendimientoQueOtorga(dosisConsumida){
    return 0.9 ** dosisConsumida
  }

}

object terere{


// metodos de consulta.

  method rendimientoQueOtorga(dosisTerere){
    return (0.1 * dosisTerere).max(1)
  }


}


object cianuro {


// metodos de consulta.

  method rendimientoQueOtorga(dosisCianuro){
    return if(tito.peso() > 70) tito.peso() *0.01 + dosisCianuro else 0

  
  }


}
