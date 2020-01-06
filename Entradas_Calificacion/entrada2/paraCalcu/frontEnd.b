#importar "Mfiles/fusioness.m"
#definir canchura 50
#definir caltura 30

ent signoActual;
structAux auxilia;
listaDeListas mimemoria;
listaValores lista_actual;

//cuadros de texto
Rtxt listado;
Rtxt valoractual;
//botones de la calcu
Rbton boton0;
Rbton boton1;
Rbton boton2;
Rbton boton3;
Rbton mas;
Rbton menos;
Rbton por;
Rbton memless;
Rbton igual;
Rbton clearall;
Rbton imp;


zro R:iniciar_ventana(){
	signoActual = -1;
	auxilia = newStructAux();
	mimemoria = newListaDeListas();
	addNodo_listaDeListas(mimemoria);
	lista_actual = mimemoria.fin.cuerpo;
	
	_Nuevo_GUI(listado); 
	_Nuevo_GUI(valoractual); 
	_Nuevo_GUI(boton0); 
	_Nuevo_GUI(boton1); 
	_Nuevo_GUI(boton2); 
	_Nuevo_GUI(boton3); 
	_Nuevo_GUI(mas); 
	_Nuevo_GUI(menos); 
	_Nuevo_GUI(por); 
	_Nuevo_GUI(memless); 
	_Nuevo_GUI(igual); 
	_Nuevo_GUI(clearall);
	_Nuevo_GUI(imp);
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/

	listado.settexto("0");
	listado.setancho(160);
	listado.setalto(caltura);
	listado.setpos(25,15);

	valoractual.settexto("0");
	valoractual.setancho(160);
	valoractual.setalto(caltura);
	valoractual.setpos(25,50);

	boton0.settexto("0");
	boton0.setancho(canchura);
	boton0.setalto(caltura);
	boton0.setpos(25,85);

	boton1.settexto("1");
	boton1.setancho(canchura);
	boton1.setalto(caltura);
	boton1.setpos(80,85);
	
	mas.settexto("+");
	mas.setancho(canchura);
	mas.setalto(caltura);
	mas.setpos(135,85);

	boton2.settexto("2");
	boton2.setancho(canchura);
	boton2.setalto(caltura);
	boton2.setpos(25,120);

	boton3.settexto("3");
	boton3.setancho(canchura);
	boton3.setalto(caltura);
	boton3.setpos(80,120);
	
	menos.settexto("-");
	menos.setancho(canchura);
	menos.setalto(caltura);
	menos.setpos(135,120);

	por.settexto("*");
	por.setancho(canchura);
	por.setalto(caltura);
	por.setpos(25,155);

	memless.settexto("M-");
	memless.setancho(canchura);
	memless.setalto(caltura);
	memless.setpos(80,155);
	
	clearall.settexto("C");
	clearall.setancho(canchura);
	clearall.setalto(caltura);
	clearall.setpos(135,155);

	igual.settexto("=");
	igual.setancho(160);
	igual.setalto(caltura);
	igual.setpos(25,190);

	imp.settexto("print mem");
	imp.setancho(160);
	imp.setalto(caltura);
	imp.setpos(25,225);
}

zro boton0:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%s0",casteo);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	valoractual.settexto(temporal);
}

zro boton1:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%s1",casteo);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	valoractual.settexto(temporal);
}

zro boton2:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%s2",casteo);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	valoractual.settexto(temporal);
}

zro boton3:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%s3",casteo);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	valoractual.settexto(temporal);
}


zro mas:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	ent valoR = _aent(casteo);
	if (signoActual == -1) {
		addNodo_ListaValores(lista_actual, 1, '_', 0);//1 para valor 0 para signo	
	}
	addNodo_ListaValores(lista_actual, 0, '+', 0);//1 para valor 0 para signo
	addNodo_ListaValores(lista_actual, 1, '_', valoR);//1 para valor 0 para signo
	signoActual = 1;
	auxilia.dos = valoR;
	auxilia.uno = auxilia.uno + auxilia.dos;
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%e",auxilia.uno);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	listado.settexto(temporal);
}

zro menos:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	ent valoR = _aent(casteo);
	if (signoActual == -1) {
		addNodo_ListaValores(lista_actual, 1, '_', 0);//1 para valor 0 para signo	
	}
	addNodo_ListaValores(lista_actual, 0, '-', 0);//1 para valor 0 para signo
	addNodo_ListaValores(lista_actual, 1, '_', valoR);//1 para valor 0 para signo
	signoActual = 1;
	auxilia.dos = valoR;
	auxilia.uno = auxilia.uno - auxilia.dos;
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%e",auxilia.uno);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	listado.settexto(temporal);
}

zro por:al_dar_click(){
	Rstring temporal = valoractual.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	ent valoR = _aent(casteo);
	if (signoActual == -1) {
		addNodo_ListaValores(lista_actual, 1, '_', 0);//1 para valor 0 para signo	
	}
	addNodo_ListaValores(lista_actual, 0, '*', 0);//1 para valor 0 para signo
	addNodo_ListaValores(lista_actual, 1, '_', valoR);//1 para valor 0 para signo
	signoActual = 1;
	auxilia.dos = valoR;
	auxilia.uno = auxilia.uno * auxilia.dos;
	_write("c:\\CalificacionOLCvacas\\temporal.txt");
	_wf("%e",auxilia.uno);
	_close();
	_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
	_close();
	listado.settexto(temporal);
}

zro clearall:al_dar_click(){
	valoractual.settexto("0");
	listado.settexto("0");
}

zro igual:al_dar_click(){
	valoractual.settexto(listado.gettexto());
	Rstring temporal = valoractual.gettexto();
	listado.settexto("0");
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	ent valoR = _aent(casteo);
	if (signoActual == -1) {
		addNodo_ListaValores(lista_actual, 1, '_', 0);//1 para valor 0 para signo	
	}
	addNodo_ListaValores(lista_actual, 1, '_', valoR);//1 para valor 0 para signo
	signoActual = -1;
	auxilia = newStructAux();
	addNodo_listaDeListas(mimemoria);
	lista_actual = mimemoria.fin.cuerpo;
}

zro imp:al_dar_click(){
	Rstring temporal;
	_read("c:\\CalificacionOLCvacas\\ruta.txt",temporal);
	_close();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal);
	nodoDeLista tempo = mimemoria.inicio;
	if (tempo == nlo){
		/*_write(casteo);
		_wf("Memoria de calculadora vacia");
		_close();		*/
	}
	else{
		_write("c:\\CalificacionOLCvacas\\otro.txt");
		_wf("_\n");
		_close();
		while(tempo <> nlo){
			_write("c:\\CalificacionOLCvacas\\temporal.txt");
			_wf(" ");
			_close();
			if (tempo.cuerpo <> nlo){
				nodo tempoX = tempo.cuerpo.inicio;
				bul num = false;
				while(tempoX <> nlo){
					_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
					_close();
					chr txtacumulado[_pesode(temporal)];
					txtacumulado = _atxt(temporal);

					if (tempoX.tipo == 1) {

						if (num){
							_write("c:\\CalificacionOLCvacas\\temporal.txt");
							_wf("%s = %e",txtacumulado,tempoX.valor);
							_close();
							num = false;
						}
						else{
							_write("c:\\CalificacionOLCvacas\\temporal.txt");
							_wf("%s %e",txtacumulado,tempoX.valor);
							_close();
							num = true;	
						}
					}
					else{

						_write("c:\\CalificacionOLCvacas\\temporal.txt");
						_wf("(%s) %c",txtacumulado,tempoX.signo);
						_close();
						num = false;
					}
					tempoX = tempoX.sig;
				}
				_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
				_close();
				chr linea_final[_pesode(temporal)];
				linea_final = _atxt(temporal);
				_apend("c:\\CalificacionOLCvacas\\otro.txt");
				_wf("%s \n",linea_final);
				_close();
			}
			tempo = tempo.sig;
		}
	}
	Rmensaje("reporte generado con exito");
}

zro memless:al_dar_click(){
	if (popNodo_listaDeListas(mimemoria)){
		Rmensaje("'pop' realizado");	
	}
	else{
		Rmensaje("no se elimino nada");
	}	
}