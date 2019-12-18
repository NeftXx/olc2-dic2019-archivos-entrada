#importar "arbol/arbol.m"

zro main() {
  Arbol arbol = _reservar(_pesode(Arbol));

  insertar(arbol, 125);
  insertar(arbol, 100);
  insertar(arbol, 50);
  insertar(arbol, 25);
  insertar(arbol, 75);
  insertar(arbol, 150);

  _imp("Impresion preorden: \n");
  imprimirPre(arbol.raiz);
  _imp("\nImpresion entreorde: \n");
  imprimirEntre(arbol.raiz);
  _imp("\nImpresion postorden: \n");
  imprimirPost(arbol.raiz);
}