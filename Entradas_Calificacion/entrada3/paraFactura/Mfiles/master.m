fusion detalle {
	ent numFactura;
	ent codigo;
	ent cantidad;
	detalle sig;
	detalle ant;
};

fusion losdetalles {
	detalle inicio;
	detalle fin;
};


detalle newDetalle(ent numFactura, ent codigo, ent cantidad){
	detalle nuevo = _reservar( _pesode(detalle) );
	nuevo.numFactura = numFactura;
	nuevo.codigo = codigo;
	nuevo.cantidad = cantidad;
	regresar nuevo;
}



losdetalles newLosdetalles(){
	losdetalles nuevo = _reservar( _pesode(losdetalles) );
	regresar nuevo;
}



//agregar a lista de valores
zro pushDetalle(losdetalles th,ent numFactura, ent codigo, ent cantidad){
	detalle nuevo = newDetalle(numFactura,codigo,cantidad);
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





