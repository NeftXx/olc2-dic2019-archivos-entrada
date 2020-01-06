#definir aanchura 63
#definir aaltura 23
#definir por_defectos 57

Rlbl titulo; // un cuadro de texto numerico
RtxtN miInput; // un cuadro de texto numerico
// mis botones
Rbton paraIf;
Rbton paraSwitch;
Rbton paraFor;
Rbton paraWhile;
Rbton paraRepeat;

zro R:iniciar_ventana(){
	
	_Nuevo_GUI(miInput);
	_Nuevo_GUI(titulo); 
	_Nuevo_GUI(paraIf); 
	_Nuevo_GUI(paraSwitch); 
	_Nuevo_GUI(paraRepeat); 
	_Nuevo_GUI(paraFor); 
	_Nuevo_GUI(paraWhile); 
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	titulo.settexto("Ingresa valor numerico:");
	titulo.setancho(140);
	titulo.setalto(aaltura);
	titulo.setpos(25,25);

	miInput.setancho(160);
	miInput.setalto(aaltura);
	miInput.setpos(25,75);
	miInput.setancho(160);
	miInput.setalto(aaltura);
	miInput.setpos(25,75);

	paraIf.settexto("if");
	paraIf.setancho(aanchura);
	paraIf.setalto(aaltura);
	paraIf.setpos(25,125);

	paraSwitch.settexto("switch");
	paraSwitch.setancho(aanchura);
	paraSwitch.setalto(aaltura);
	paraSwitch.setpos(115,125);

	paraWhile.settexto("while");
	paraWhile.setancho(aanchura);
	paraWhile.setalto(aaltura);
	paraWhile.setpos(25,175);

	paraFor.settexto("for");
	paraFor.setancho(aanchura);
	paraFor.setalto(aaltura);
	paraFor.setpos(115,175);

	paraRepeat.settexto("repeat");
	paraRepeat.setancho(aanchura);
	paraRepeat.setalto(aaltura);
	paraRepeat.setpos(60,225);
	//la siguiente funcion puede venir o no
	//_alto_y_ancho(,700);
}

zro paraIf:al_dar_click(){
	Rstring temporal = miInput.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("ya tome el valor del texto \'%s\'\n",casteo);
	Rmensaje("ya tome el valor del texto \'%s\'",casteo);
	//
	ent a; // a = 0;
	while (a < 3){
		Rmensaje("Empieza en : %e", a); //un cuadro de mensaje		
		a++;
	}
	if (_pesode(temporal) >= 1){
		if (casteo[0] <> '\0'){
			ent valor = _aent(casteo);
			dec x = valor + 0.1; // casteo
			x++;
			x = ((x + 25 * 2 / 5) - 1 + 175.135)+x;
			_imp("x vale %d \n",x);
			if (x <= 300.0 && x > 200.0){
				_imp("%d esta entre 300 y 200\n",x);
			}
			else if (x <= 200.0 && x > 100.0){
				_imp("%d esta entre 200 y 100\n",x);
			}
			else{
				_imp("%d en rango indefinido\n",x);
			}
			Rmensaje("if terminado");
		}
		else{
			Rmensaje("No se ingresaron valores v2");		
		}
	}
	else {
		Rmensaje("No se ingresaron valores");		
	}
}

zro paraSwitch:al_dar_click(){

	Rstring temporal = miInput.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("ya tome el valor del texto \'%s\'\n",casteo);
	Rmensaje("ya tome el valor del texto \'%s\'",casteo);
	
	if (_pesode(temporal) >= 1){
		if (casteo[0] <> ''){
			ent valor = _aent(casteo);
			dec x = valor + 0.1; // casteo
			x++;
			switch(x){
				case 501.1:
					_imp("\"%d\" entra en el caso 1\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
					romper;
				case 401.1:
					_imp("\"%d\" entra en el caso 2\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
					romper;
				case 301.1:
					_imp("\"%d\" entra en el caso 3\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
					romper;
				case 201.1:
					_imp("\"%d\" entra en el caso 4\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
					romper;
				case 101.1:
					_imp("\"%d\" entra en el caso 5\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
					romper;
				default:
					_imp("\"%d\" no entro en ningun caso\n",x);
					x = ((x + 25 * 2 / 5) - 10.135 + 200.135) + x;
					_imp("valor final: %d\n",x);
			}
			Rmensaje("switch terminado");
		}
		else{
			Rmensaje("No se ingresaron valores v2");		
		}
	}
	else {
		Rmensaje("No se ingresaron valores");		
	}
}

zro paraWhile:al_dar_click(){

	Rstring temporal = miInput.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("ya tome el valor del texto \'%s\'\n",casteo);
	Rmensaje("ya tome el valor del texto \'%s\'",casteo);
	if (_pesode(temporal) >= 1){
		if (casteo[0] <> '\0'){
			ent valor = _aent(casteo);
			dec x = valor + 0.1; // casteo
			x++;
			x = ((x + 25 * 2 / 5) - 1 + 175.135)+x;
			dec div = x / 10;
			while (x >= -1){
				_imp("x = %d \n", x); //un cuadro de mensaje		
				x = x - div;
				_imp(" x = %d - %d = %d\n", (x+div), div,x); //un cuadro de mensaje		
				_imp("x = %d \n", x); //un cuadro de mensaje		
				_imp("--------------------------------------------"); //un cuadro de mensaje		
			}
			Rmensaje("while terminado");		
		}
		else{
			Rmensaje("No se ingresaron valores v2");		
		}
	}
	else {
		Rmensaje("No se ingresaron valores");		
	}
}

zro paraFor:al_dar_click(){

	Rstring temporal = miInput.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("ya tome el valor del texto \'%s\'\n",casteo);
	Rmensaje("ya tome el valor del texto \'%s\'",casteo);
	if (_pesode(temporal) >= 1){
		if (casteo[0] <> '\0'){
			ent valor = _aent(casteo);
			dec x = valor + 0.1; // casteo
			x++;
			x = ((x + 25 * 2 / 5) - 1 + 175.135)+x;
			dec div = x / 10;
			for (ent i = x; i >= -1; i = i - div){
				_imp("i = %e \n", i); //un cuadro de mensaje		
				x = i - div;
				_imp(" i = %d - %e = %d\n", (x+div),div,x); //un cuadro de mensaje		
				_imp("i = %d \n", i); //un cuadro de mensaje		
				_imp("--------------------------------------------"); //un cuadro de mensaje
			}	
			Rmensaje("for terminado");
		}
		else{
			Rmensaje("No se ingresaron valores v2");		
		}
	}
	else {
		Rmensaje("No se ingresaron valores");		
	}
}

zro paraRepeat:al_dar_click(){

	Rstring temporal = miInput.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	_imp("ya tome el valor del texto \'%s\'\n",casteo);
	Rmensaje("ya tome el valor del texto \'%s\'",casteo);
	if (_pesode(temporal) >= 1){
		if (casteo[0] <> '\0'){
			ent valor = _aent(casteo);
			dec x = valor + 0.1; // casteo
			x++;
			x = ((x + 25 * 2 / 5) - 1 + 175.135)+x;
			dec div = x / 10;
			repeat {
				_imp("x = %d \n", x); //un cuadro de mensaje		
				x = x - div;
				_imp(" x = %d - %e = %d\n", (x+div),div,x); //un cuadro de mensaje		
				_imp("x = %d \n", x); //un cuadro de mensaje		
				_imp("--------------------------------------------"); //un cuadro de mensaje		
			} when (x >= -1) ;	
			Rmensaje("repeat terminado");
		}
		else{
			Rmensaje("No se ingresaron valores v2");		
		}
	}
	else {
		Rmensaje("No se ingresaron valores");		
	}
}
