fusion structAux {
	 ent uno;
	 ent dos;
};

fusion nodo {
	ent tipo;
	chr signo;
	ent valor;
	nodo sig;
	nodo ant;
};

fusion listaValores {
	nodo inicio;
	nodo fin;
};

fusion nodoDeLista {
	listaValores cuerpo;
	nodoDeLista sig;
	nodoDeLista ant;
};

fusion listaDeListas {
	nodoDeLista inicio;
	nodoDeLista fin;
};

nodo newNodo(ent tip, chr sign, ent val){
	nodo nuevo = _reservar( _pesode(nodo) );
	nuevo.tipo = tip;
	nuevo.signo = sign;
	nuevo.valor = val;
	regresar nuevo;
}

structAux newStructAux(){
	structAux nuevo = _reservar(_pesode(structAux));
	regresar nuevo;
}

listaValores newListaValores(){
	listaValores nuevo = _reservar(_pesode(listaValores));
	regresar nuevo;
}

nodoDeLista newNodoDeLista(){
	nodoDeLista nuevo = _reservar(_pesode(nodoDeLista));
	nuevo.cuerpo = newListaValores();
	regresar nuevo;
}

listaDeListas newListaDeListas(){
	listaDeListas nuevo = _reservar(_pesode(listaDeListas));
	regresar nuevo;
}

//agregar a lista de valores
zro addNodo_ListaValores(listaValores actual, ent tip, chr sign, ent val){
	nodo nuevo = newNodo(tip,sign,val);
	if (actual.inicio == nlo) {
		actual.inicio = nuevo;
		actual.fin = nuevo;
	}
	else{
		actual.fin.sig = nuevo;
		nuevo.ant = actual.fin;
		actual.fin = nuevo;
	}
}

zro addNodo_listaDeListas(listaDeListas actual){
	nodoDeLista nuevo = newNodoDeLista();
	if (actual.inicio == nlo) {
		actual.inicio = nuevo;
		actual.fin = nuevo;
	}
	else{
		actual.fin.sig = nuevo;
		nuevo.ant = actual.fin;
		actual.fin = nuevo;
	}
}

bul popNodo_listaDeListas(listaDeListas actual){
	if (actual.inicio == nlo){
		regresar false;
	}
	if (actual.fin.ant == nlo){//fin == inicio
		actual.fin = nlo;
		actual.inicio = nlo;
	}
	else{
		nodoDeLista temp = actual.fin.ant;
		temp.sig = nlo;
		actual.fin = temp;
	}
	regresar true;
}
