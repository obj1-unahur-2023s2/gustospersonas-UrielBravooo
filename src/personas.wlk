import colores.*
import materiales.*

object rosa{
	method leGusta(algo){
		return algo.peso() <=2000
	}
}
object estefania{
	method leGusta(algo){
		return algo.color().esFuerte()
	}
}
object luisa{
	method leGusta(algo){
		return algo.esMaterialQueBrilla()
	}
}	
object juan{
	method leGusta(algo){
		return not algo.color().esFuerte() or algo.peso().between(1200,1800)
	}
}