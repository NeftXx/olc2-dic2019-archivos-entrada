#importar "lista.m"
#definir hola 25


Rtxt miInput; // un cuadro de texto
Rtxt miInput2; // un cuadro de texto
Rbton miBoton; //un boton
Rbton miBoton2; //un boton

zro R:iniciar_ventana(){
	
	_Nuevo_GUI(miInput); // se inicializa la variable miInput
	_Nuevo_GUI(miBoton); // se inicializa la variable miBoton
	_Nuevo_GUI(miInput2); // se inicializa la variable miInput
	_Nuevo_GUI(miBoton2); // se inicializa la variable miBoton
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	
	miInput.settexto("este es un texto inicial");
	miInput.setancho(hola);
	miInput.setpos(hola,hola);

	miBoton.settexto("Mensaje");
	miBoton.setancho(hola);
	miBoton.setalto(hola*2);
	miBoton.setpos(hola+100,hola+200);// pos en X y Y dentro de la ventana.

	miInput2.setancho(hola);
	miInput2.setpos(hola,hola+40);

	miBoton2.settexto("calcular");
	miBoton2.setancho(hola);
	miBoton2.setalto(hola*2);
	miBoton2.setpos(hola+160,hola+200);// pos en X y Y dentro de la ventana.

	//la siguiente funcion puede venir o no
	_alto_y_ancho(600,700);
}

zro miBoton:al_dar_click(){
	
	_imp("texto con formato %e ", hola); // imprime en consola 25

	Rstring temporal = miInput.gettexto();

	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("texto con formato 2 %s ", casteo); // imprime en consola 'este es un texto inicial'
	_imp("texto con formato 2 %c ", casteo[0]); // imprime en consola 'e'

	Rmensaje("valor de miInput: %s", casteo); //un cuadro de mensaje
}

zro miBoton2:al_dar_click(){
	
	miInput2.settexto(miInput.gettexto()); // copia valor de un cuadro a otro
	_imp("texto con formato %e ", hola); // imprime en consola 25

	ent miSalida = miFactorial(1*1*1*1+1-2+5); //llamada a funcion importada 'lista.h'

	Rmensaje("valor de miInput: %e", miSalida); //un cuadro de mensaje
}

