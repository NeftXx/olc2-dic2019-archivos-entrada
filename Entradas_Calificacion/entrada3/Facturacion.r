#importar "paraFactura/consultas.b"

/*
#importar "facturacion.m"
#importar "master.m"
#importar "productos.m"
#importar "trabajador.m"
*/

bodega tablaProductos;
planilla tablaOperadores;
losdetalles tablaMasterDet;
facturas tablaFacturas;

zro main(){
	/*
	*iniciando con la configuracion de la ruta
	*/
	tablaFacturas = newFacturas();
	tablaOperadores = newPlanilla();
	tablaMasterDet = newLosdetalles();
	tablaProductos = newBodega();

	carga_de_productos(tablaProductos);
	carga_de_operadores(tablaOperadores);
	pushFactura(tablaFacturas,
				10001, 
				siempre20("cliente 1"), 
				789456, 
				123456, 
				siempre50("esta es la direccion del cliente 1"), 
				500.000);
	pushFactura(tablaFacturas,
				10002, 
				siempre20("cliente 2"), 
				789456, 
				753357, 
				siempre50("esta es la direccion del cliente 2"), 
				700.0);
	pushFactura(tablaFacturas,
				10003, 
				siempre20("cliente 2"), 
				123456, 
				753357, 
				siempre50("esta es la direccion del cliente 2"), 
				200.50);
	pushFactura(tablaFacturas,
				10004, 
				siempre20("cliente 3"), 
				123456, 
				951951, 
				siempre50("esta es la direccion del cliente 3"), 
				325.45);
	pushFactura(tablaFacturas,
				10005, 
				siempre20("cliente 3"), 
				789456, 
				951951, 
				siempre50("esta es la direccion del cliente 3"), 
				654.12);

	pushDetalle(tablaMasterDet,10001, 125, 3);
	pushDetalle(tablaMasterDet,10001, 126, 1);
	pushDetalle(tablaMasterDet,10001, 123, 3);

	
	pushDetalle(tablaMasterDet,10002, 127, 1);
	pushDetalle(tablaMasterDet,10002, 126, 2);
	pushDetalle(tablaMasterDet,10002, 128, 1);

	pushDetalle(tablaMasterDet,10003, 126, 1);
	pushDetalle(tablaMasterDet,10003, 124, 8);

	pushDetalle(tablaMasterDet,10004, 125, 9);

	pushDetalle(tablaMasterDet,10005, 125, 9);
	pushDetalle(tablaMasterDet,10005, 123, 1);
	pushDetalle(tablaMasterDet,10005, 127, 1);

	ptrBodega = tablaProductos;
	ptrPlanilla = tablaOperadores;
	ptrFacturas = tablaFacturas;
	ptrMasterDet = tablaMasterDet;
	_abrir_ventana(consultas);
}

