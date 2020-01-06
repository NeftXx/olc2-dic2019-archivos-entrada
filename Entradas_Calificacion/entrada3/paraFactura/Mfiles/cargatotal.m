#importar "facturacion.m"
#importar "master.m"
#importar "productos.m"
#importar "trabajador.m"

chr[] siempre20(chr arr[]){
	chr hola[] = "____________________";
	ent size = _pesode(arr);
	if (size < 20){
		ent auxi=0;
		while(auxi < size){
			hola[auxi] = arr[auxi];
			auxi++;
		}
	}
	else { //mayor a 20
		ent aux=0;
		while(aux < 20){
			hola[aux]=arr[aux];
			aux++;
		}
	}
	regresar hola;
}

chr[] siempre50(chr arr[]){
	chr hola[] = "__________________________________________________";
	ent size = _pesode(arr);
	if (size < 50){
		ent auxi=0;
		while(auxi < size){
			hola[auxi] = arr[auxi];
			auxi++;
		}
	}
	else { //mayor a 20
		ent aux=0;
		while(aux < 50){
			hola[aux]=arr[aux];
			aux++;
		}
	}
	regresar hola;
}
zro carga_de_productos(bodega th){
	chr nombre[] = siempre20("producto1");
	pushProducto(th, nombre, 123, 11.99);
	nombre = siempre20("producto2 con mas texto");
	pushProducto(th, nombre, 124, 15.10);
	nombre = siempre20("producto3");
	pushProducto(th, nombre, 125, 34.50);
	nombre = siempre20("producto4 hasta donde");
	pushProducto(th, nombre, 126, 115.25);
	nombre = siempre20("producto5");
	pushProducto(th, nombre, 127, 299.50);
	nombre = siempre20("producto6 sobrecarga");
	pushProducto(th, nombre, 128, 123.12);
}


zro carga_de_operadores(planilla th){
	chr nombre[] = siempre20("Ricardo Menchu");
	pushOperador(th, nombre, 123456);
	nombre = siempre20("Alejandro carrera");
	pushOperador(th, nombre, 789456);
	nombre = siempre20("Renel");
	pushOperador(th, nombre, 456123);
}