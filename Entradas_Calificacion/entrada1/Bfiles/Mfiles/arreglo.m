chr arregloglobal[8][3];
ent comp[3][2][3] = {{{10,20,30},{5,10,15}},{{7,95,1113},{1,114,11117}},{{81,25,64},{54,2,0}}};

zro correr_todoArreglos(){
	encabezadoArreglos();
	ent x = 0;
	ent y = 0;
	ent A = 65; 
	while (x<8) {
		while (true) {
			if (y==3){
				romper;
			}
			arregloglobal[x][y] = A;
			_imp("%e  ",A);
			y++;	
			A++;
		}
		y = 0;
		_imp("\n______________________________________\n");
		x++;
	}
	recorrer_global();
	chr a[3];
	chr b[3];
	chr c[3];
	chr d[3];
        ent obt[] = obtener();
	a = arregloglobal[obt];
        obt = obtener();
	b = arregloglobal[obt];
        obt = obtener();
	c = arregloglobal[obt];
        obt = obtener();
	d = arregloglobal[obt];
	_imp("%s \n",a);
	_imp("%s \n",b);
	_imp("%s \n",c);
	_imp("%s \n",d);
}

zro encabezadoArreglos(){
	_imp("\n\n\n\n?????????????????????????????????????????????????????\n");
	_imp("?   INICIO DE PARTE DE ARREGLOS                     ?\n");
	_imp("?????????????????????????????????????????????????????\n\n");
}

zro recorrer_global() {
	_imp("impresion de contenido...\n");
	ent x = 0;
	ent A = 65;
	while (x<8) {
                chr temp[] = arregloglobal[x];
		_imp("%s \n", temp);
		x++;
	}
}

ent[] obtener(){
	ent d1 = 2;
	ent d2 = 0;
	ent d3 = 0;
	ent a[4];
	bul encontro;
	for (ent i = 0; i < 4; i++){
		encontro = false;
		while (d1>= 0) {
			while (d2<2) {
				while (d3<3) {	
					if (comp[d1][d2][d3] >= 0 && comp[d1][d2][d3] <= 7){
						a[i] = comp[d1][d2][d3];
						_imp("valor correcto: %e \n",a[i]);
						encontro = true;
						romper;
					}
					d3++;
				}
				if (encontro){
					_imp("break!");
					romper;
				}
				d3 = 0;
				d2++;
			}
			if (encontro){
				_imp("break!");
				romper;
			}
			d2 = 0;
			d1--;
		}
	}
	regresar a;
}

