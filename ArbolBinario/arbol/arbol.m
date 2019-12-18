#importar "nodo.m"

fusion Arbol {
  Nodo raiz;
}

zro insertar(Arbol arbol, ent info) {
  Nodo nuevo;
  nuevo = _reservar(_pesode(Nodo));
  nuevo.info = info;
  nuevo.izq = nlo;
  nuevo.der = nlo;

  if (arbol.raiz == nlo) {
    arbol.raiz = nuevo;
  } else {
    Nodo anterior = nlo;
    Nodo temp = arbol.raiz;
    while (temp <> nlo) {
      anterior = temp;
      if (info < temp.info) {
        temp = temp.izq;
      } else {
        temp = temp.der;
      }
    }
    if (info < anterior.info) {
      anterior.izq = nuevo;
    } else {
      anterior.der = nuevo;
    }
  }
}

zro imprimirPre(Nodo reco) {
  if (reco <> nlo) {
    _imp("%e ", reco.info);
    imprimirPre(reco.izq);
    imprimirPre(reco.der);
  }
}

zro imprimirEntre(Nodo reco) {
  if (reco <> nlo) {
    imprimirEntre(reco.izq);
    _imp("%e ", reco.info);
    imprimirEntre(reco.der);
  }
}

zro imprimirPost(Nodo reco) {
  if (reco <> nlo) {
    imprimirPost(reco.izq);
    imprimirPost(reco.der);
    _imp("%e ", reco.info);
  }
}
