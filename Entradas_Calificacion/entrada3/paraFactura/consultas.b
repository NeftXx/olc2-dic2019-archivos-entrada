#importar "Mfiles/cargatotal.m"

bodega ptrBodega;
planilla ptrPlanilla;
losdetalles ptrMasterDet;
facturas ptrFacturas;

Rlbl label1;
Rlbl label2;
//cuadros de texto
RtxtN nFactura;
RtxtN codOperador;
//botones de la calcu
Rbton imprimir;
Rbton consulta;
Rbton ventas;


zro R:iniciar_ventana(){
	
	_Nuevo_GUI(label1);
	_Nuevo_GUI(label2);
	_Nuevo_GUI(nFactura); 
	_Nuevo_GUI(codOperador); 
	_Nuevo_GUI(imprimir); 
	_Nuevo_GUI(consulta);
	_Nuevo_GUI(ventas);
	/*
	* Si un componente no se ha inicializado no se puede acceder a sus 
	* funciones y metodos propios.
	*/
	label1.settexto("No de factura");
	label1.setancho(121);
	label1.setalto(30);
	label1.setpos(25,20);

	label2.settexto("codigo de operador");
	label2.setancho(155);
	label2.setalto(30);
	label2.setpos(25,100);

	nFactura.setancho(70);
	nFactura.setalto(30);
	nFactura.setpos(25,60);
        nFactura.settexto("10001");

	codOperador.setancho(70);
	codOperador.setalto(30);
	codOperador.setpos(25,140);
        codOperador.settexto("123456");

	imprimir.settexto("imprimir");
	imprimir.setancho(75);
	imprimir.setalto(30);
	imprimir.setpos(205,60);

	consulta.settexto("consulta");
	consulta.setancho(75);
	consulta.setalto(30);
	consulta.setpos(205,140);

	ventas.settexto("Reporte de venta");
	ventas.setancho(155);
	ventas.setalto(30);
	ventas.setpos(25,180);
}

zro imprimir:al_dar_click(){
	Rstring temporal = nFactura.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	ent numFactura = _aent(casteo);
	if (existeFactura(ptrFacturas, numFactura)){
		_imp("generando factura....");
		_write("c:\\CalificacionOLCvacas\\factura.txt");
		_wf("_generado desde GUI\n\n");
		_close();
		factura tempo = getFactura(ptrFacturas, numFactura);
		_apend("c:\\CalificacionOLCvacas\\factura.txt");
		_wf("                              No. %e\n",tempo.num);
		_wf("Nombre: %s   Nit: %e\n",tempo.nombreCli,tempo.nit);
		_wf("Direccion: %s \n",tempo.direccion);
		_wf("Operador: %e \n",tempo.idOperador);
		_wf("____________________________________________________\n");
		_wf("Descripcion          cantidad         subtotal \n");
		_close();
		detalle detalleR = ptrMasterDet.inicio;
		dec total = 0.0;
		_apend("c:\\CalificacionOLCvacas\\factura.txt");
		while(detalleR <> nlo){
			if (detalleR.numFactura == numFactura){
				dec valor = getPrecio(ptrBodega, detalleR.codigo) * detalleR.cantidad;
				total = total + valor;   
				_wf("%s      %e      %d\n",getnombre(ptrBodega, detalleR.codigo),detalleR.cantidad,valor);
			}
			detalleR = detalleR.sig;
		}
		_wf("         Total: %d\n", total);
		_wf("         Pago: %d\n", tempo.pago );
		_wf("         Cambio: %d\n", tempo.pago - total);
		_close();
		_imp("factura generada con exito!");
	}
	else{
		Rmensaje("La factura %e no existe!",numFactura);	
	}
}

zro consulta:al_dar_click(){
	Rstring temporal = codOperador.gettexto();
	chr casteo[_pesode(temporal)];
	casteo = _atxt(temporal); 
	ent idOperador = _aent(casteo);
	if (existeOperador(ptrPlanilla, idOperador)){
		Rmensaje("El operador %e si existe!",idOperador);
	}
	else{
		Rmensaje("El operador %e no existe!",idOperador);	
	}
}

zro ventas:al_dar_click(){
	Rmensaje("Sin acciones");	
}





	
