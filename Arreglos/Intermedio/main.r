ent particion(ent arreglo[], ent bajo, ent alto) {
  ent pivote = arreglo[alto];
  ent i = (bajo - 1);
  for (ent j = bajo; j < alto; j++) {
    if (arreglo[j] <= pivote) {
      i++;
      ent temp = arreglo[i];
      arreglo[i] = arreglo[j];
      arreglo[j] = temp;
    }
  }
  ent temp = arreglo[i + 1];
  arreglo[i + 1] = arreglo[alto];
  arreglo[alto] = temp;
  regresar i + 1;
}

zro quickSort(ent arreglo[], ent bajo, ent alto) {
  if (bajo < alto) {
    ent pi = particion(arreglo, bajo, alto);
    quickSort(arreglo, bajo, pi - 1);
    quickSort(arreglo, pi + 1, alto);
  }
}

zro imprimirArreglo(ent arreglo[], ent length) {
  for (ent i = 0; i < length; i++) {
    _imp("%e ", arreglo[i]);
  }
  _imp("\n");
}

zro main() {
  _imp("=========== Analizando Quicksort ===========\n");
  ent arreglo[] = {2, 1, 3, 5, 4};
  ent arreglo_ordenado[] = {1, 2, 3, 4, 5};

  quickSort(arreglo, 0, 4);
  bul iguales = true;
  ent size = _pesode(arreglo_ordenado);
  for (ent i = 0; i < size; i++) {
    if (arreglo[i] <> arreglo_ordenado[i]) {
      iguales = false;
    }
  }

  // 1 2 3 4 5
  imprimirArreglo(arreglo, size);

  if (iguales) {
    _imp("Done.\n");
  } else {
    _imp("RIP. \n");
  }
}