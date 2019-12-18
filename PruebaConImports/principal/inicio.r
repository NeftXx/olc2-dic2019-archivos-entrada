#importar "UI/frame.b"
#importar "funciones.m"
#definir varConst 25


zro main(){

	bienvenida("a todos");
	chr asdf[] = voltear("hola mundo");
	_imp("valor volteado %s \n",asdf);
	//jalar graficos
	//_abrir_ventana(frame);
	_imp("%d \n",constante_por_dos());
	_imp("%e \n",multiplicar(4,5));

}


zro bienvenida(chr a[]){
	
	_imp("hola %s",a); 
	_imp("\n");

}


chr[] voltear(chr a[]){

	ent size = _pesode(a);
	ent index1 = size - 1;
	ent index2; // 0
	chr retorno[size];

	while (index1 >= 0){
		_imp("a[%e] = %c",index1,a[index1]);
		retorno[index2] = a[index1];
		index1--;
		index2++;
	}
	// ej: "abc" -> "cba"
	regresar retorno;

}

