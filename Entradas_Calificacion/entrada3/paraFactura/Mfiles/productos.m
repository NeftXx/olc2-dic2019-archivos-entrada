fusion producto {
	chr nombre[20];
	ent codigo;
	dec precio;
	producto sig;
	producto ant;
};

fusion bodega {
	producto inicio;
	producto fin;
};


producto newProducto(chr nombre[], ent codigo, dec precio){
	producto nuevo = _reservar( _pesode(producto) );
	nuevo.nombre = nombre;
	nuevo.codigo = codigo;
	nuevo.precio = precio;
	regresar nuevo;
}



bodega newBodega(){
	bodega nuevo = _reservar( _pesode(bodega) );
	regresar nuevo;
}



//agregar a lista de valores
zro pushProducto(bodega th, chr nombre[], ent codigo, dec precio){
	producto nuevo = newProducto(nombre,codigo,precio);
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

bul existeProd(bodega th, ent codigo) {
	producto tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.codigo == codigo){
			regresar true;
		}
		tempo = tempo.sig;
	}
	regresar false;
}

dec getPrecio(bodega th, ent codigo) {
	producto tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.codigo == codigo){
			regresar tempo.precio;
		}
		tempo = tempo.sig;
	}
	regresar -0.1;
}

chr[] getnombre(bodega th, ent codigo) {
	chr a[20] = "....................";
	producto tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.codigo == codigo){
			a = tempo.nombre;
			romper;
		}
		tempo = tempo.sig;
	}
	regresar a;
}


