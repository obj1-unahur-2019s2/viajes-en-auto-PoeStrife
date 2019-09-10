object ludmila{
	method precioDelViaje(){
		return 18
	}	
}
object anaMaria{
	var economia = true
		method precioDelViaje(){
		if (economia){
			return 30
		}
		else {return 25}
	}
}
object teresa{
	method precioDelViaje(){
		return 22 
	}
}
object roxana{
	method precioCobrado(cliente, km){
		return cliente.precioDelViaje() * km
	}
}
object gabriela{
	method precioCobrado(cliente, km){
		return cliente.precioDelViaje() * 1.2 * km
	}
}
object mariela{
	method precioCobrado(cliente, km){
	return 50.max(cliente.precioDelViaje() * km)
	}
}
object juana{
	method precioCobrado(cliente, km){
		if (km <= 8){
			return 100
		}
		else {return 200}
	}
}
object lucia{
	var property remiseraAReemplazar = roxana
	method precioDelViaje(cliente, km){
		return remiseraAReemplazar.precioCobrado(cliente, km)
	}	
}
object melina{
	var clientes 
	method tuClienteEs(cliente){
		clientes = cliente
	}
	method precioDelViaje(cliente, km){
		return clientes.precioDelViaje() - 3
	}
}

object oficina{
	var primeraRemisera
	var segundaRemisera
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	method intercambiarRemiseras(){
		var aux 
		aux = primeraRemisera
		primeraRemisera = segundaRemisera
		segundaRemisera = aux
	}
	method remiseraElegidaParaViaje(cliente, km){
		if (primeraRemisera.precioCobrado(cliente, km) > segundaRemisera.precioCobrado(cliente, km) and
			primeraRemisera.precioCobrado(cliente, km) - segundaRemisera.precioCobrado(cliente, km) >= 30
			)
		{return segundaRemisera}
		else {return primeraRemisera}
	}
}

