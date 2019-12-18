#definir constante 25


dec constante_por_dos(){
	regresar constante * 2;
}


ent multiplicar(ent a, ent b){
	
	if (b == 1){
		regresar a;
	}
	regresar a + multiplicar(a, b-1);
}









