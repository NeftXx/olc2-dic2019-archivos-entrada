#definir banchura 160
#definir baltura 30

Rlbl Name;
//cuadros de texto
Rtxt Nombre;
//botones de la calcu
Rbton submit;


zro R:iniciar_ventana(){
	
	
	_Nuevo_GUI(Name); 
	_Nuevo_GUI(Nombre); 
	_Nuevo_GUI(submit); 
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/

	Name.settexto("Ruta del reporte");
	Name.setancho(banchura);
	Name.setalto(baltura);
	Name.setpos(25,25);

	Nombre.setancho(banchura);
	Nombre.setalto(baltura);
	Nombre.setpos(25,60);

	submit.settexto("Configurar");
	submit.setancho(banchura);
	submit.setalto(baltura);
	submit.setpos(25,95);
}

zro submit:al_dar_click(){
	Rstring temporal = Nombre.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	_write("c:\\CalificacionOLCvacas\\ruta.txt");
	_wf("%s",casteo);
	_close();
	Rmensaje("Ruta configurada!");
}
