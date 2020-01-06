fusion persona {
	ent edad;
	chr nombre[6];
};

fusion familia{
	persona padres[2];
	persona hijos [5];
};

zro imprimir_persona(persona a, chr Rol){
	if (a <> nlo) {
		_imp("Nombre: %s, Edad: %e, Rol: %c\n",a.nombre, a.edad, Rol);		
	}
}

zro nueva_persona(familia a, chr name[], ent yold, chr Rol){
	if (Rol == 'm'){
		if (a.padres[0] == nlo){
			a.padres[0] = _reservar(_pesode(persona));
			a.padres[0].edad = yold;
			a.padres[0].nombre = name;
		}
		else{
			_imp("Esta familia ya tiene una MADRE!");
		}	

	}
	else if (Rol == 'p')
	{
		if (a.padres[1] == nlo){
			a.padres[1] = _reservar(_pesode(persona));
			a.padres[1].edad = yold;
			a.padres[1].nombre = name;
		}
		else{
			_imp("Esta familia ya tiene un PADRE!");
		}			
	}
	else if (Rol == 'h')
	{
		ent x = 0;
		while (x < 5){
			if (a.hijos[x] == nlo){
				a.hijos[x] = _reservar(_pesode(persona));
				a.hijos[x].edad = yold;
				a.hijos[x].nombre = name;
				romper;
			}
			x++;
		}
		if (x == 5) {
			_imp("Esta familia ya tiene muchos HIJOS!");	
		}
	}
	else {
		_imp("Este rol no existe %c", Rol);	
	}
}

familia nueva_familia(){
	familia nuevo = _reservar(_pesode(familia));
	regresar nuevo;
}