#importar "masMfiles/mifusion.m"

zro correr_todoFusiones(){
	familia sociedad[10];
	encabezadoFusiones();
	_imp("familias dentro la sociedad: %d\n",sizeOfSociedad(sociedad));

	ent x = 0;
	ent y = 0;
	while (x < 6) {
		sociedad[x] = nueva_familia();
		x++;
	}

	x = 0;
	y = 0;
	while (x < 6) {
		chr num = 49 + x;
		chr name[6] = {'p','a','p','a',' ',num};
		nueva_persona(sociedad[x], name, (45 - x), 'p');
		if (x == 4){
			if (y == 0){
				x = 3;
				y++;
			}
		}
		x++;
	}

	x = 0;
	y = 0;
	while (x < 6) {
		
		chr num = 49 + x;
		chr name[6] = {'m','a','m','a',' ',num};
		nueva_persona(sociedad[x],name, (36 + x),'m');
		if (x == 4){
			if (y == 0){
				x = 3;
				y++;
			}
		}
		x++;
	}

	x = 0;
	y = 0;
	while (x < 6) {
		ent a = 0;
		while (a < 5) {
			chr num = 49 + a;
			chr name[6] = {'h','i','j','o',' ',num};
			nueva_persona(sociedad[x],name, (18 - a),'h');
			a++;
		}
		if (x == 4){
			if (y == 0){
				x = 3;
				y++;
			}
		}
		x++;
	}
	_imp("familias dentro la sociedad: %d\n",sizeOfSociedad(sociedad));
	poblacion(sociedad);
}

zro encabezadoFusiones(){
	_imp("\n\n\n\n╔═══════════════════════════════════════════════════╗\n");
	_imp("║   INICIO DE PARTE DE FUSIONES                     ║\n");
	_imp("╚═══════════════════════════════════════════════════╝\n\n");
}


ent sizeOfSociedad(familia a[]){
	ent x = 0;
	ent size = 0;
	while(x<10){
		if (a[x] <> nlo){
			size++;	
		}
		else{
			romper;
		}
		x++;
	}
	regresar size;
}


zro poblacion(familia a[]){
	ent x = 0;
	while(x<10){
		if (a[x] <> nlo){
			_imp("_________________________________\n");
			imprimir_persona(a[x].padres[0],'m');
			imprimir_persona(a[x].padres[1],'p');
			imprimir_persona(a[x].hijos[0],'h');
			imprimir_persona(a[x].hijos[1],'h');
			imprimir_persona(a[x].hijos[2],'h');
			imprimir_persona(a[x].hijos[3],'h');
			imprimir_persona(a[x].hijos[4],'h');
		}
		else{
			romper;
		}
		x++;
	}
}



