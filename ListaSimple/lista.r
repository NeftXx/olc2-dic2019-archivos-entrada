fusion Nodo {
  ent dato;
  Nodo sig;
};

fusion Lista {
  Nodo inicio;
  ent tam;
};

zro insertar(Lista lista, ent dato) {
  Nodo nuevo = _reservar(_pesode(Nodo));
  nuevo.dato = dato;
  nuevo.sig = lista.inicio;
  lista.inicio = nuevo;
}

zro main() {
  Lista lista = _reservar(_pesode(Lista));
  insertar(lista, 10);
  /*insertar(lista, 20);
  insertar(lista, 30);
  insertar(lista, 1);
  insertar(lista, 40);
  insertar(lista, 56);*/
  // 56 -> 40 -> 1 -> 30 -> 20 -> 10
}
