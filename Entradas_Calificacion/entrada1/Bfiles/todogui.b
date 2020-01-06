#definir xanchura 100
#definir xaltura 30
#definir por_defecto 57
Rlbl titulo2; // un cuadro de texto numerico

Rtxt textual;//sentencias de control
RtxtA parrafo;
RtxtP claves;
RtxtN numerico;
Rbton tecla;

zro R:iniciar_ventana(){
	
	_Nuevo_GUI(titulo2); 
	_Nuevo_GUI(textual); 
	_Nuevo_GUI(parrafo); 
	_Nuevo_GUI(claves); 
	_Nuevo_GUI(numerico); 
	_Nuevo_GUI(tecla); 
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	titulo2.settexto("MINIMOS GUI");
	titulo2.setancho(140);
	titulo2.setalto(xaltura);
	titulo2.setpos(25,10);

	textual.settexto("txt");
	textual.setancho(xanchura);
	textual.setalto(xaltura);
	textual.setpos(25,75);

	claves.settexto("pass");
	claves.setancho(xanchura);
	claves.setalto(xaltura);
	claves.setpos(150,75);

	numerico.settexto("numerico");
	numerico.setancho(xanchura);
	numerico.setalto(xaltura);
	numerico.setpos(25,140);

	tecla.settexto("boton");
	tecla.setancho(xanchura);
	tecla.setalto(xaltura);
	tecla.setpos(150,140);

	parrafo.settexto("parrafo");
	parrafo.setancho(xanchura);
	parrafo.setalto(xaltura+100);
	parrafo.setpos(25,205);

	//la siguiente funcion puede venir o no
	//_alto_y_ancho(,700);
	
}

zro tecla:al_dar_click(){
	opcion = 1;
	Rmensaje("tecla presionada"); //un cuadro de mensaje
}

