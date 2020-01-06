fusion jugador {
	chr nombre[20];
	ent codigo;
	juegos misjugadas;
	jugador sig;
	jugador ant;
};

fusion juego {
	ent punteo;
	ent movimientos;
	bul ganado;
	jugador sig;
	jugador ant;
};

fusion jugadores {
	jugador inicio;
	jugador fin;
	ent tam;
};

fusion juegos {
	juego inicio;
	juego fin;
};



juego newJuego(ent pts, ent movs, bul win){
	juego nuevo = _reservar( _pesode(juego) );
	nuevo.punteo = pts;
	nuevo.movimientos = movs;
	nuevo.ganado = win;
	regresar nuevo;
}

juegos newJuegos(){
	juegos nuevo = _reservar( _pesode(juegos) );
	regresar nuevo;
}

jugador newJugador(chr name[], ent code){
	jugador nuevo = _reservar( _pesode(jugador) );
	nuevo.nombre = name;
	nuevo.codigo = code;
	nuevo.misjugadas = newJuegos();
	regresar nuevo;
}

jugadores newJugadores(){
	jugadores nuevo = _reservar( _pesode(jugadores) );
	nuevo.tam = 1000;
	regresar nuevo;
}


//agregar a lista de valores
zro pushJugador(jugadores listajgs, chr name[]){
	jugador nuevo = newJugador(name,listajgs.tam);
	if (listajgs.inicio == nlo) {
		listajgs.inicio = nuevo;
		listajgs.fin = nuevo;
		listajgs.tam++;
	}
	else{
		listajgs.fin.sig = nuevo;
		nuevo.ant = listajgs.fin;
		listajgs.fin = nuevo;
		listajgs.tam++;
	}
}

zro pushJuego(juegos listajgs, ent pts, ent movs, bul win){
	juego nuevo = newJuego(pts,movs,win);
	if (listajgs.inicio == nlo) {
		listajgs.inicio = nuevo;
		listajgs.fin = nuevo;
	}
	else{
		listajgs.fin.sig = nuevo;
		nuevo.ant = listajgs.fin;
		listajgs.fin = nuevo;
	}
}

zro guardarJugada(jugadores listajgs,ent pts, ent movs, bul win,ent codigo){
	jugador tempo = listajgs.inicio;
	while(tempo <> nlo) {
		if (tempo.codigo == codigo){
			pushJuego(tempo.misjugadas, pts, movs, win);
			_imp("si guardo jugada");
			romper;
		}
		tempo = tempo.sig;
	}
}



zro printJuegos(juego jdor){
	if (jdor <> nlo){
		_imp("Punteo: %e,  Movimientos: %e,  Ganado: %b\n", jdor.punteo, jdor.movimientos,jdor.ganado);
		printJuegos(jdor.sig);
	}
}

zro printJugadores(jugador jdor){
	if (jdor == nlo){
		_imp("vacio");
	}
	else{
		_imp("Nombre: %s,  Codigo: %e\n", jdor.nombre, jdor.codigo);
		_imp(".............jugadas................\n");
		printJuegos(jdor.misjugadas.inicio);
		_imp("....................................\n");	
		printJugadores(jdor.sig);
	}
}