#importar "paraCalcu/ruta.b"
#importar "paraTorres/juego.b"
//#importar "paraTorres/torresH/structs.m"

/*
juego
jugadores
jugador
juego
*/

jugadores principal;

zro main(){
	/*
	*iniciando con la configuracion de la ruta
	*/
	principal = newJugadores();    		 
	ent yas = 0;
	while (yas<100){
		chr a = ((yas % 10)+48);
		chr nombre[20] = "jugador para relleno";
                ent b = a;
		nombre[19] = b;
		pushJugador(principal, nombre);
		yas++;

	}	
	printJugadores(principal.inicio);

	_abrir_ventana(ruta);
	
	ptr_principal = principal;// variable global en juego.b
	jugador_actual = 1003;// variable global en juego.b
	_abrir_ventana(juego);

	printJugadores(principal.inicio);
	ptr_principal = principal;
	jugador_actual = 1070;
	_abrir_ventana(juego);

	printJugadores(principal.inicio);
	ptr_principal = principal;
	jugador_actual = 1005;
	_abrir_ventana(juego);

	printJugadores(principal.inicio);
}

