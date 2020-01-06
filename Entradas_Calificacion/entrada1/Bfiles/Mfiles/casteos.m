
zro correr_todoCasteos(){
	encabezadoCasteo();
	chr entero[] = "526";
	chr decimal[] = "1284.456";
	ent int = _aent(entero);
	dec float = _adec(decimal);
	chr concatenar[11];
	chr tmp[] = _atxt(int);
	chr tmp2[] = _atxt(float);
	_conc(concatenar,tmp);
	_conc(concatenar,tmp2);
	bul bool = _eqls(tmp2,tmp);
	_imp("int = %e",int);
	_imp("float = %d",float);
	_imp("tmp = %s",tmp);
	_imp("tmp2 = %s",tmp2);
	_imp("concatenar = %s",concatenar);
}

zro encabezadoCasteo(){
	_imp("\n\n\n\n╔═══════════════════════════════════════════════════╗\n");
	_imp("║   INICIO DE PARTE DE CASTEOS                      ║\n");
	_imp("╚═══════════════════════════════════════════════════╝\n\n");
}


