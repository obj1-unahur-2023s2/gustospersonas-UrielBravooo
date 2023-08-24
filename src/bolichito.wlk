import materiales.*
import cosas.*
import colores.*
import personas.*

object bolichito{
	var objetoEnVidriera
	var objetoEnMostrador
	
	method objetoEnVidriera() = objetoEnVidriera
	
	method objetoEnVidriera(unObjeto){objetoEnVidriera=unObjeto}
	
	method objetoEnMostrador() = objetoEnMostrador
	
	method objetoEnMostrador(unObjeto){objetoEnMostrador=unObjeto}	
	
	method esBrillante(){
		return objetoEnVidriera.material().esBrillante() and
		objetoEnMostrador.material().esBrillante()
		}
		
	method esMonocromatico(){
		return objetoEnVidriera.color() == objetoEnMostrador.color()
	}
	method estaDesequilibrado(){
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	method tieneAlgoDeColor(color) = ((objetoEnMostrador.color()==color) or (objetoEnVidriera.color()==color))
	
	method puedeMejorar(){return self.esMonocromatico() or self.estaDesequilibrado()}
	
	method puedeOfrecerleAlgoA(persona){
		return persona.leGusta(self.objetoEnMostrador()) or persona.leGusta(self.objetoEnVidriera())}
		
}

