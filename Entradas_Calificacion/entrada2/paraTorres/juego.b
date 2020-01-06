#importar "torresH/torres.m"
#importar "torresH/structs.m"

ent movimientos;
ent puntos;
ent torre_actual;
bul arriba;
torrehanoi t1;
torrehanoi t2;
torrehanoi t3;
ent sizeFicha;

jugadores ptr_principal;

ent jugador_actual;

Rlbl pos1;
Rlbl pos2;
Rlbl pos3;

Rlbl movsTitle;
Rlbl movsN;

//cuadros de texto
RtxtA torre1;
RtxtA torre2;
RtxtA torre3;
//botones de la calcu
Rbton izq;
Rbton select;
Rbton der;
Rbton salir;


zro R:iniciar_ventana(){
	arriba = true;
	puntos = 100;
	movimientos = 0;
	torre_actual = 0;
	t1 = newTorrehanoi();
	t2 = newTorrehanoi();
	t3 = newTorrehanoi();
	sizeFicha = -1;
	cargarTorreInicial(t1);
	_Nuevo_GUI(movsN);
	_Nuevo_GUI(movsTitle);
	_Nuevo_GUI(pos3); 
	_Nuevo_GUI(pos2); 
	_Nuevo_GUI(pos1); 
	_Nuevo_GUI(torre3);
	_Nuevo_GUI(torre1);
	_Nuevo_GUI(torre2); 
	_Nuevo_GUI(izq); 
	_Nuevo_GUI(select); 
	_Nuevo_GUI(der);
	_Nuevo_GUI(salir); 
	
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	pos1.settexto("=><=");
	pos1.setancho(70);
	pos1.setalto(30);
	pos1.setpos(25,20);

	pos2.setancho(70);
	pos2.setalto(30);
	pos2.setpos(500,20);

	pos3.setancho(70);
	pos3.setalto(30);
	pos3.setpos(1000,20);

	

	torre1.Setancho(35);
	torre1.setalto(135);
	torre1.setpos(25,70);

	torre2.Setancho(35);
	torre2.setalto(135);
	torre2.setpos(525,70);

	torre3.Setancho(35);
	torre3.setalto(135);
	torre3.setpos(1025,70);

	izq.settexto("<=");
	izq.setancho(60);
	izq.setalto(30);
	izq.setpos(20,315);

	select.settexto("up");
	select.setancho(60);
	select.setalto(30);
	select.setpos(90,315);

	der.settexto("<=");
	der.setancho(60);
	der.setalto(30);
	der.setpos(160,315);

	salir.settexto("terminar");
	salir.setancho(170);
	salir.setalto(30);
	salir.setpos(160,355);

	movsTitle.settexto("Movimientos");
	movsTitle.setancho(130);
	movsTitle.setalto(30);
	movsTitle.setpos(25,390);

	movsTitle.settexto("0");
	movsN.setancho(60);
	movsN.setalto(30);
	movsN.setpos(160,390);

	ent salida[][] = {torreToArray(t1), torreToArray(t2), torreToArray(t3)};
/*        ent temp1[] = torreToArray(t1);
        ent temp2[] = torreToArray(t2);
        ent temp3[] = torreToArray(t3);
	salida[0] = temp1;
	salida[1] = temp2;
	salida[2] = temp3;
*/
	ent uno = 0;
	while (uno<3){
		_write("c:\\CalificacionOLCvacas\\temporal.txt");
		_wf("");		
		_close();
		ent dos = 3;
		while (dos>=0){
			_apend("c:\\CalificacionOLCvacas\\temporal.txt");
			if (salida[uno][dos] == 0){
				_wf("  | \n");		
			}
			else if (salida[uno][dos] == 1){
				_wf("  # \n");
			}
			else if (salida[uno][dos] == 3){
				_wf(" ### \n");
			}
			else{//5
				_wf("#####\n");	
			}
			_close();
			dos--;
		}
		Rstring zzz;
		_read("c:\\CalificacionOLCvacas\\temporal.txt",zzz);		
		_close();
		if (uno == 0){
			torre1.settexto(zzz);
		}
		else if (uno == 1){
			torre2.settexto(zzz);
		}
		else{//5
			torre3.settexto(zzz);
		}
		uno++;
	}
}

zro izq:al_dar_click(){
	if (torre_actual == 0){
		torre_actual = 2;
	}
	else{
		torre_actual--;
	}
	pos1.settexto("");
	pos2.settexto("");
	pos3.settexto("");
	if (torre_actual == 1){
		pos2.settexto("=><=");
	}
	else if (torre_actual == 2){
		pos3.settexto("=><=");
	}
	else{
		pos1.settexto("=><=");
	}
}

zro der:al_dar_click(){
	if (torre_actual == 2){
		torre_actual = 0;
	}
	else{
		torre_actual++;
	}
	pos1.settexto("");
	pos2.settexto("");
	pos3.settexto("");
	if (torre_actual == 1){
		pos2.settexto("=><=");
	}
	else if (torre_actual == 2){
		pos3.settexto("=><=");
	}
	else{
		pos1.settexto("=><=");
	}
}

zro select:al_dar_click(){

	if (arriba){//pop
		ficha get;
		if (torre_actual == 1){
			get = popFicha(t2);
			if (get <> nlo){
				select.settexto("down");
				sizeFicha = get.tamanio;
				arriba = false;
			}
			else{
				Rmensaje("torre2 vacia!");
			}
		}
		else if (torre_actual == 2){
			pos3.settexto("=><=");
			get = popFicha(t3);
			if (get <> nlo){
				select.settexto("down");
				sizeFicha = get.tamanio;
				arriba = false;
			}
			else{
				Rmensaje("torre3 vacia!");
			}
		}
		else{
			pos1.settexto("=><=");
			get = popFicha(t1);
			if (get <> nlo){
				select.settexto("down");
				sizeFicha = get.tamanio;
				arriba = false;
			}
			else{
				Rmensaje("torre1 vacia!");
			}
		}
		if (!arriba){
	ent salida[][] = {torreToArray(t1), torreToArray(t2), torreToArray(t3)};
/*			ent salida[3][4];
			salida[0] = torreToArray(t1);
			salida[1] = torreToArray(t2);
			salida[2] = torreToArray(t3);
*/
			ent uno = 0;
			while (uno<3){
				_write("c:\\CalificacionOLCvacas\\temporal.txt");
				_wf("");		
				_close();
				ent dos = 3;
				while (dos>=0){
					_apend("c:\\CalificacionOLCvacas\\temporal.txt");
					if (salida[uno][dos] == 0){
						_wf("  | \n");		
					}
					else if (salida[uno][dos] == 1){
						_wf("  # \n");
					}
					else if (salida[uno][dos] == 3){
						_wf(" ### \n");
					}
					else{//5
						_wf("#####\n");	
					}
					_close();
					dos--;
				}
				Rstring zzz;
				_read("c:\\CalificacionOLCvacas\\temporal.txt",zzz);		
				_close();
				if (uno == 0){
					torre1.settexto(zzz);
				}
				else if (uno == 1){
					torre2.settexto(zzz);
				}
				else{//5
					torre3.settexto(zzz);
				}
				uno++;
			}
		}
	}
	else{//push
		bul se_pudo = false;
		if (torre_actual == 1){
			pos2.settexto("=><=");
			if (pushFicha(t2, sizeFicha)){
				se_pudo = true;
			}
			else{
				Rmensaje("Movimiento invalido!");
			}
		}
		else if (torre_actual == 2){
			pos3.settexto("=><=");
			if (pushFicha(t3, sizeFicha)){
				se_pudo = true;
			}
			else{
				Rmensaje("Movimiento invalido!");
			}
		}
		else{
			pos1.settexto("=><=");
			if (pushFicha(t1, sizeFicha)){
				se_pudo = true;
			}
			else{
				Rmensaje("Movimiento invalido!");
			}
		}
		if (se_pudo) {
			arriba = true;
			select.settexto("up");
			sizeFicha = -1;
			movimientos++;
			puntos = puntos - 2;
			Rstring temporal;
			_write("c:\\CalificacionOLCvacas\\temporal.txt");
			_wf("%e",movimientos);
			_close();
			_read("c:\\CalificacionOLCvacas\\temporal.txt",temporal);
			_close();
			movsN.settexto(temporal);
	ent salida[][] = {torreToArray(t1), torreToArray(t2), torreToArray(t3)};
/*			ent salida[3][4];
			salida[0] = torreToArray(t1);
			salida[1] = torreToArray(t2);
			salida[2] = torreToArray(t3);
*/
			ent uno = 0;
			while (uno<3){
				_write("c:\\CalificacionOLCvacas\\temporal.txt");
				_wf("");		
				_close();
				ent dos = 3;
				while (dos>=0){
					_apend("c:\\CalificacionOLCvacas\\temporal.txt");
					if (salida[uno][dos] == 0){
						_wf("  | \n");		
					}
					else if (salida[uno][dos] == 1){
						_wf("  # \n");
					}
					else if (salida[uno][dos] == 3){
						_wf(" ### \n");
					}
					else{//5
						_wf("#####\n");	
					}
					_close();
					dos--;
				}
				Rstring zzz;
				_read("c:\\CalificacionOLCvacas\\temporal.txt",zzz);		
				_close();
				if (uno == 0){
					torre1.settexto(zzz);
				}
				else if (uno == 1){
					torre2.settexto(zzz);
				}
				else{//5
					torre3.settexto(zzz);
				}
				uno++;
			}
		}
	}
}

zro salir:al_dar_click(){
	bul lo_gano = false;
	if (t2.tam == 3 || t3.tam == 3){
		lo_gano = true;
		Rmensaje("Ganaste!!!!!");
	}
	else{
		Rmensaje("perdiste =(");
	}
	guardarJugada(ptr_principal,puntos,movimientos,lo_gano,jugador_actual);
}



	
