Fusion Estudiante {
  char nombre[20];
  char apellido[30];
}

ent factorial(ent n) {
  if (n = 0) {
    return 1
  }
  return n * factorial(n - 1);
}

ent potencia(ent base, ent exp) {
  if (exp = 0) {
    return 1;
  }
  return base * potencia(base, exp - 1);
}

zro hanoi(ent discos, ent origen, ent auxiliar, ent destino) {
 if (discos = 1) {
   _imp("\t\t\tmover disco de  %e a %e", origen, destino);
 } else {
   hanoi(discos - 1, origen, destino, auxiliar);
   _imp("\t\t\tmover disco de %e a %e", origen, destino);
   hanoi(discos - 1, auxiliar, origen, destino);
 }
}

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
  return i + 1;
}

zro quickSort(ent arreglo[], ent bajo, ent alto) {
  if (bajo < alto) {
    ent pi = particion(arreglo, bajo, alto);
    quickSort(arreglo, bajo, pi - 1);
    quickSort(arreglo, pi + 1, alto);
  }
}

zro imprimirArreglo(int arreglo[], int length) {
  for (ent i = 0; i < length; i++) {
    _imp("%e ", arreglo[i]);
  }
  _imp("\n");
}

ent hofstaderFemenina(ent n) {
  if (n < 0) {
    return 0;
  } else {
    return (n == 0) ? 1 : n - hofstaderFemenina(n - 1);
  }
}

ent hofstaderMasculino(ent n) {
  if (n < 0) {
    return 0;
  } else {
    return n == 0 ? 0 : n - hofstaderMasculino(n - 1);
  }
}

ent par(ent nump) {
  if (nump == 0) {
    return 1;
  }
  return impar(nump - 1);
}

ent impar(ent numi) {
  if (numi == 0) {
    return 0;
  }
  return par(numi - 1);
}

ent ackermann(ent m, ent n) {
  if (m == 0) {
    return (n + 1);
  } else if (m > 0 && n == 0) {
    return ackermann(m - 1, 1);
  } else {
    return ackermann(m - 1, ackermann(m, n - 1));
  }
}

Estudiante graduo(Estudiante e) {
  _copi(e.nombre, "Ronald");
  _copi(e.apellido, "Berduo");
  return e;
}

ent mod(ent a, ent b) {
  ent resto = a;
  while (resto >= b) {
    resto = resto - b;
  }
  return resto;
}

zro main() {
  _imp("Modulo con \%: %e \tModulo con mod: %e", (17 % 3), mod(17, 3));
  _imp("-------ARCHIVO DE FUNCIONALIDADES AVANZADAS--------\n");
  _imp("OBJETOS\n");
  _imp("\tMANEJO ADECUADO DE REFERENCIAS\n");

  Estudiante e1 = _reservar(_pesode(Estudiante));
  Estudiante e2 = _reservar(_pesode(Estudiante));

  _copi(e1.nombre, "Estudiante 1");
  _copi(e2.nombre, "Estudiante 2");
  _copi(e1.apellido, " Compi 2");
  _copi(e2.apellido, e1.apellido);

  _imp("\t\tEstudiantes:\n");
  _imp("\t\t\tNo. 1: %s %s\n", e1.nombre, e1.apellido);
  _imp("\t\t\tNo. 2: %s %s\n", e2.nombre, e2.apellido);

  if (_eqls(e1.apellido, e2.apellido)) {
    Estudiante g1 = graduo(e2);
    _imp("\t\t\tEstudiante g1: %s %s\n", g1.nombre, g1.apellido);

    /**
    * Funcion potencia: Entrada: base = 2, exponente = 5.
    */
    ent base = 2;
    ent exponente = 5;
    _imp("\t\tEl numero %e elevado a la %e potencia es: %e", base, exponente, potencia(base, exponente));
    _imp("\tRECURSIVIDAD MULTIPLE");

    /**
    * Funcion Hanoi, resuelve el problema de La Torres de Hanoi.
    */
    ent discos = 3;
    ent origen = 1;
    ent auxiliar = 2;
    ent destino = 3;
    _imp("\t\tSolucion al problema de torres de Hanoi para n = %e", discos);
    Hanoi(discos, origen, auxiliar, destino);

    /**
    * Funcion QuickSort, ordena un arreglo.
    */
    ent arreglo[] = {0, 0, 0, 0, 0};
    _imp("\t\tOrdenar un arreglo con el algoritmo QuickSort");
    arreglo[0] = 2;
    arreglo[1] = 1;
    arreglo[2] = 3;
    arreglo[3] = 5;
    arreglo[4] = 4;
    _imp("\t\t\tArreglo desordenado: ");
    imprimirArreglo(arreglo, 5);
    quickSort(arreglo, 0, 4);
    _imp("\t\t\tArreglo ordenado: ");
    imprimirArreglo(arreglo, 5);

    /**
    * Funcion Hoftadter.
    */
    _imp("\tRECURSIVIDAD CRUZADA");
    _imp("\t\tGenerar funciones Hoftadter");
    ent i;
    _imp("\t\t\tFemenina: ");
    for (i = 0; i < 10; i++) {
        _imp("%e ", hofstaderFemenina(i));
    }
    _imp("\n");
    _imp("\t\t\tMasculina: ");
    for (i = 0; i < 10; i++) {
        _imp("%e ", hofstaderMasculino(i));
    }
    _imp("\n");

    /**
      * Funciones Par e Impar.
      */
    _imp("\t\tDeterminar la paridad de dos numeros\n");
    ent a = 17;
    ent b = 68;
    ent res = par(a);
    _imp("\t\t\tEl numero %e es: ", a);
    if (res = 1) {
      _imp("par\n");
    } else {
      imp("impar\n");
    }

    res = impar(b);
    _imp("\t\t\tEl numero %e es: ", b);
    if (res = 0) {
      _imp("par\n");
    } else {
      imp("impar\n");
    }
    _imp("\tRECURSIVIDAD ANIDADA");
    ent m = 3;
    ent n = 7;
    _imp("\t\tFuncion de Ackermann (%e, %e) = %e\n", m, n, ackermann(m, n));
  }
}