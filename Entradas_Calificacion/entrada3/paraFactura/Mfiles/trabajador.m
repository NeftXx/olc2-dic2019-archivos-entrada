fusion operador {
	chr nombre[20];
	ent id;
	operador sig;
	operador ant;
};

fusion planilla {
	operador inicio;
	operador fin;
};


operador newOperador(chr nombre[], ent id){
	operador nuevo = _reservar( _pesode(operador) );
	nuevo.nombre = nombre;
	nuevo.id = id;
	regresar nuevo;
}



planilla newPlanilla(){
	planilla nuevo = _reservar( _pesode(planilla) );
	regresar nuevo;
}



//agregar a lista de valores
zro pushOperador(planilla th, chr nombre[], ent id){
	operador nuevo = newOperador(nombre,id);
	if (th.inicio == nlo) {
		th.inicio = nuevo;
		th.fin = nuevo;
	}
	else{
		th.fin.sig = nuevo;
		nuevo.ant = th.fin;
		th.fin = nuevo;
	}
}

bul existeOperador(planilla th, ent id) {
	operador tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.id == id){
			regresar true;
		}
		tempo = tempo.sig;
	}
	regresar false;
}



