fusion ficha {
	ent tamanio;
	ficha sig;
	ficha ant;
};

fusion torrehanoi {
	ficha inicio;
	ficha fin;
	ent tam;
};

ficha newFicha(ent size){
	ficha nuevo = _reservar( _pesode(ficha) );
	nuevo.tamanio = size;
	regresar nuevo;
}

torrehanoi newTorrehanoi(){
	torrehanoi nuevo = _reservar( _pesode(torrehanoi) );
	nuevo.tam = 0;
	regresar nuevo;
}



//agregar a lista de valores
bul pushFicha(torrehanoi th, ent size){
        ficha nuevo = newFicha(size);
//	ficha nuevo = newFicha(tip,sign,val);
	if (th.inicio == nlo) {
		th.inicio = nuevo;
		th.fin = nuevo;
		th.tam++;
		regresar true;
	}
	if (th.fin.tamanio < size){
		regresar false;
	}
	th.fin.sig = nuevo;
	nuevo.ant = th.fin;
	th.fin = nuevo;
	th.tam++;
	regresar true;
}

ficha popFicha(torrehanoi th){
	ficha tempo;
	if (th.inicio == nlo){
		regresar tempo;
	}
	if (th.fin.ant == nlo){//fin == inicio
		temp = th.fin;
		th.fin = nlo;
		th.inicio = nlo;
		th.tam--;
	}
	else{
		tempo = th.fin;
		tempo.ant.sig = nlo;
		th.fin = tempo.ant;
		th.tam--;
	}
	regresar tempo;
}

zro cargarTorreInicial(torrehanoi th){
	pushFicha(th,5);
	pushFicha(th,3);
	pushFicha(th,1);
}

ent[] torreToArray(torrehanoi th){
	ent salida[] = {0,0,0,0};
	ficha tempo = th.inicio;
	ent pasos = 0;
	while(tempo <> nlo) {
		salida [pasos] = tempo.tamanio;
		tempo = tempo.sig;
		pasos++;
	}
	regresar salida;
}