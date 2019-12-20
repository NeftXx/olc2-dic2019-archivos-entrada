zro main() {
  crearArchivo(8);
  leerArchivo("archivos/nuevoArchivo.txt"); // si se creo el archivo no deberia tirar error
  // leerArchivo("archivo/noexiste.txt"); // deberia mostrar error
  escribirEnArchivo("archivos/fichero.txt"); // escribir en un archivo que existe
  leerArchivo("archivos/fichero.txt"); // mostrar el texto
}

zro crearArchivo(ent numFilas) {
  _write("archivos/nuevoArchivo.txt");
  _wf("Numero de filas: %e\n\n", numFilas);
  for(ent altura = 0; altura < numFilas; altura++){
    for(ent blancos = 0; blancos < numFilas-altura; blancos++){
      _wf(" ");
    }

    for(ent asteriscos = 0; asteriscos < altura * 2; asteriscos++){
      _wf("*");
    }
    _wf("\n");
  }
  _close();
}

zro escribirEnArchivo(chr nombreArchivo[]) {
  _apend(nombreArchivo);
  _wf("Este texto es nuevo.\n");
  _close();
}

zro leerArchivo(chr nombreArchivo[]) {
  Rstring cadena = "";
  _read(nombreArchivo, cadena);
  _close();
   chr cad[] = _atxt(cadena);
  _imp("%s", cad);
}