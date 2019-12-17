ent factorial(ent n) {
  if (n == 0) {
    regresar 1;
  }
  regresar n * factorial(n - 1);
}

ent potencia(ent base, ent exp) {
  if (exp == 0) {
    regresar 1;
  }
  regresar base * potencia(base, exp - 1);
}

zro hanoi(ent discos, ent origen, ent auxiliar, ent destino) {
 if (discos == 1) {
   _imp("mover disco de  %e a %e\n", origen, destino);
 } else {
   hanoi(discos - 1, origen, destino, auxiliar);
   _imp("mover disco de %e a %e\n", origen, destino);
   hanoi(discos - 1, auxiliar, origen, destino);
 }
}

ent hofstaderFemenina(ent n) {
  if (n < 0) {
    regresar 0;
  } else {
    if (n == 0) {
      regresar 1;
    }
    regresar n - hofstaderFemenina(n - 1);
  }
}

ent hofstaderMasculino(ent n) {
  if (n < 0) {
    regresar 0;
  } else {
    if (n == 0) {
      regresar 0;
    }
    regresar n - hofstaderMasculino(n - 1);
  }
}

ent par(ent nump) {
  if (nump == 0) {
    regresar 1;
  }
  regresar impar(nump - 1);
}

ent impar(ent numi) {
  if (numi == 0) {
    regresar 0;
  }
  regresar par(numi - 1);
}

ent ackermann(ent m, ent n) {
  if (m == 0) {
    regresar (n + 1);
  } else if (m > 0 && n == 0) {
    regresar ackermann(m - 1, 1);
  } else {
    regresar ackermann(m - 1, ackermann(m, n - 1));
  }
}

zro main() {
  /**
    * Funcion factorial: Entrada 5
    */
  _imp("======================= FACTORIAL ======================\n");
  ent numero = 5;
  _imp("El factorial del numero %e es: %e\n", numero, factorial(numero));

  /**
    * Funcion potencia: Entrada: base = 2, exponente = 5.
    */
  _imp("\n======================= POTENCIA =======================\n");
  ent base = 2;
  ent exponente = 5;
  _imp("El numero %e elevado a la %e potencia es: %e\n", base, exponente, potencia(base, exponente));

  _imp("\n================= RECURSIVIDAD MULTIPLE =================\n");

  /**
    * Funcion Hanoi, resuelve el problema de La Torres de Hanoi.
    */
  _imp("\n============ HANOI ============\n");
  ent discos = 3;
  ent origen = 1;
  ent auxiliar = 2;
  ent destino = 3;
  _imp("Solucion al problema de torres de Hanoi para n = %e\n", discos);
  hanoi(discos, origen, auxiliar, destino);

  /**
    * Funcion Hoftadter.
    */
  _imp("\n================= RECURSIVIDAD CRUZADA");
  _imp("\n===== Generar funciones Hoftadter\n");
  ent i;
  _imp("== Femenina: ");
  for (i = 0; i < 10; i++) {
      _imp("%e ", hofstaderFemenina(i));
  }
  _imp("\n");
  _imp("== Masculina: ");
  for (i = 0; i < 10; i++) {
      _imp("%e ", hofstaderMasculino(i));
  }
  _imp("\n");

  /**
    * Funciones Par e Impar.
    */
  _imp("\n===== Determinar la paridad de dos numeros\n");
  ent a = 17;
  ent b = 68;
  ent res = par(a);
  _imp("== El numero %e es: ", a);
  if (res == 1) {
    _imp("par\n");
  } else {
    _imp("impar\n");
  }
  res = impar(b);
  _imp("== El numero %e es: ", b);
  if (res == 0) {
    _imp("par\n");
  } else {
    _imp("impar\n");
  }

  _imp("\n========== RECURSIVIDAD ANIDADA ==========\n");
  ent m = 3;
  ent n = 7;
  _imp("Funcion de Ackermann (%e, %e) = %e\n", m, n, ackermann(m, n));

}
// FIN DE FUNCIONES