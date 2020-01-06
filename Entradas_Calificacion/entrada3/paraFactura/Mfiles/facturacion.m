fusion factura {
	ent num;
	chr nombreCli[20];
	ent idOperador;
	ent nit;
	chr direccion[50];
	dec pago;
	factura sig;
	factura ant;
};

fusion facturas {
	factura inicio;
	factura fin;
};

factura newFactura(ent num, chr nombreCli[], ent idOperador, ent nit, chr dir[], dec pago){
	factura nuevo = _reservar( _pesode(factura) );
	nuevo.num = num;
	nuevo.nombreCli = nombreCli;
	nuevo.nit = nit;
	nuevo.direccion = dir;
	nuevo.pago = pago;
	nuevo.idOperador = idOperador;
	regresar nuevo;
}

facturas newFacturas(){
	facturas nuevo = _reservar( _pesode(facturas) );
	regresar nuevo;
}


//agregar a lista de valores
zro pushFactura(facturas th,ent num, chr nombreCli[], ent idOperador, ent nit, chr dir[], dec pago){
	factura nuevo = newFactura(num,nombreCli,idOperador,nit,dir,pago);
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

bul existeFactura(facturas th, ent numFactura) {
	factura tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.num == numFactura){
			regresar true;
		}
		tempo = tempo.sig;
	}
	regresar false;
}

factura getFactura(facturas th, ent numFactura) {
	factura tempo = th.inicio;
	while(tempo <> nlo){
		if (tempo.num == numFactura){
			regresar tempo;
		}
		tempo = tempo.sig;
	}
	regresar tempo;
}

