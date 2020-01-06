#importar "Bfiles/inicio.b"
#importar "Bfiles/ciclos.b"
#importar "Bfiles/menu.b"
#importar "Bfiles/todogui.b"
#importar "Bfiles/Mfiles/casteos.m"
#importar "Bfiles/Mfiles/arreglo.m"
#importar "Bfiles/Mfiles/fusioness.m"
#importar "Bfiles/Mfiles/writeF.m"

chr primer_global[100];
ent listoMain;
ent micontador;

zro main(){
	micontador = 0;
	bienvenida("a todos");
	if (llamada_a_inicio() <> 0) {
		while (cuerpo() <> 0) {
			if (opcion == 1){
				_abrir_ventana(ciclos);
			}
			else if (opcion == 2){
				correr_todoArreglos();
			}
			else if (opcion == 3){
				correr_todoFusiones();
			}
			else if (opcion == 4){
				correr_todoCasteos();
			}
			else if (opcion == 5){
				correr_todoWrite();
			}
			else if (opcion == 6){
				_abrir_ventana(todogui);
			}
			else {
				_imp("JMMMMM lo siento algo no esta bien\n");
			}
			micontador++;
		}
	}
	else{
		// sin ventana
		_imp("Aun no esta listo \n");
		chr asdf[] = voltear("hola mundo");
		_imp("valor volteado %s \n",asdf);	
	}
	_imp("\n\n\n\n____________________________________________________\n");	
	_imp("  PROGRAMA FINALIZADO\n\n");	
	_imp("  menu.b utilizado =>%e<= veces\n",micontador);	
	_imp("____________________________________________________\n");	
}

ent cuerpo(){
	//ventana de sentencias de control
	_imp("abriendo segunda ventana menu\n");
	_abrir_ventana(menu);
 	regresar opcion;
}

ent llamada_a_inicio(){
	//ventana de inicio
	_imp("abriendo primera ventana...\n");
	_abrir_ventana(inicio);
	regresar listo;
}

zro bienvenida(chr a[]){
	_imp("hola %s",a); 
	_imp("\n");
}

chr[] voltear(chr a[]){
	ent size = _pesode(a);
	ent index1 = size - 1;
	ent index2; // 0
	chr retorno[size];

	while (index1 >= 0){
		_imp("a[%e] = %c",index1,a[index1]);
		retorno[index2] = a[index1];
		index1--;
		index2++;
	}
	// ej: "abc" -> "cba"
	regresar retorno;
}
