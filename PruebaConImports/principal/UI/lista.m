#importar "nodo.m"

fusion lista {
	nodo inicio;
	nodo fin;
};

bul ins_en_lista (lista laLista, chr dato1, ent dato2){

	if (laLista.inicio == nlo){
		nodo nuevo = nuevo_nodo("Ricardo M.", 24);
		lista.inicio = nuevo;
		lista.fin = nuevo;
		regresar true;
	}
	else{
		lista.fin.siguiente = nuevo;
		lista.fin = nuevo;
		regresar false;
	}

}


ent sizeOf(lista laLista){
	
	ent size = -1; // valor 0
	if (laLista == nlo){
		_imp("tremendo error");
	}
	else{
		size = 0;
		nodo tmp = laLista.inicio;
		while (tmp <> nlo){
			size++;
			tmp = tmp.siguiente;
		}
	}
	regresar size;

}

ent miFactorial(ent num){
    if(num == 0){
        regresar 1;
    }
    regresar num * miFactorial(num-1);
}