#definir banchura 100
#definir baltura 30
#definir por_defectoa 57
ent opcion;
Rlbl titulo1; // un cuadro de texto numerico

Rbton ciclos;//sentencias de control
Rbton arreglos;
Rbton fusiones;
Rbton casteos;
Rbton writeFile;
Rbton gui;

zro R:iniciar_ventana(){
	
	_Nuevo_GUI(titulo1); 
	_Nuevo_GUI(ciclos); 
	_Nuevo_GUI(arreglos); 
	_Nuevo_GUI(fusiones); 
	_Nuevo_GUI(casteos); 
	_Nuevo_GUI(writeFile); 
	_Nuevo_GUI(gui); 

	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	titulo1.settexto("MENU DE MINIMOS");
	titulo1.setancho(140);
	titulo1.setalto(baltura);
	titulo1.setpos(25,10);

	ciclos.settexto("ciclos");
	ciclos.setancho(banchura);
	ciclos.setalto(baltura);
	ciclos.setpos(25,75);

	arreglos.settexto("arreglos");
	arreglos.setancho(banchura);
	arreglos.setalto(baltura);
	arreglos.setpos(150,75);

	fusiones.settexto("fusiones");
	fusiones.setancho(banchura);
	fusiones.setalto(baltura);
	fusiones.setpos(25,140);

	casteos.settexto("casteos");
	casteos.setancho(banchura);
	casteos.setalto(baltura);
	casteos.setpos(150,140);

	writeFile.settexto("writeFile");
	writeFile.setancho(banchura);
	writeFile.setalto(baltura);
	writeFile.setpos(25,205);

	gui.settexto("gui");
	gui.setancho(banchura);
	gui.setalto(baltura);
	gui.setpos(150,205);
	//la siguiente funcion puede venir o no
	//_alto_y_ancho(,700);
	opcion = 0;
}

zro ciclos:al_dar_click(){
	opcion = 1;
	chr String[] = "sentencias de control";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}


zro arreglos:al_dar_click(){
	opcion = 2;
	chr String[] = "arreglos";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}

zro fusiones:al_dar_click(){
	opcion = 3;
	chr String[] = "fusiones";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}

zro casteos:al_dar_click(){
	opcion = 4;
	chr String[] = "casteos";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}

zro writeFile:al_dar_click(){
	opcion = 5;
	chr String[] = "escritura de archivo";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}

zro gui:al_dar_click(){
	opcion = 6;
	chr String[] = "grafic user interface";
	Rmensaje("Opcion seleccionada: \n%s", String); //un cuadro de mensaje
}