fusion nodo {
	chr nombre[10];
	ent edad;
	nodo siguiente;
};


nodo nuevo_nodo(chr name[], ent yold){
	nodo nuevo = _reservar(_pesode(nodo));
	nuevo.nombre = name;
	nuevo.edad = yold;
	regresar nuevo;
}