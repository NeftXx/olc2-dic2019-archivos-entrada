zro incrementos_decrementos() {
  ent a = 20;
  a++;
  a++;
  ent b = a;
  a++;
  a++;
  ent c = a;

  _imp("========== INCREMENTOS ==========\n");
  _imp("\ta = %e\n", a); // 24
  _imp("\tb = %e\n", b); // 22
  _imp("\tc = %e\n", c); // 24
  a--;
  b--;
  b++;
  c--;
  c = c - 2;

  _imp("========== DECREMENTOS ==========\n");
  _imp("\ta = %e\n", a); // 23
  _imp("\tb = %e\n", b); // 22
  _imp("\tc = %e\n", c); // 21
}

zro sentencia_if(ent x) {
  _imp("\n======= EL NUMERO %e =======\n", x);
  if (x >= 0) {
    _imp("Es positivo\n");
  } else {
    _imp("Es negativo\n");
  }

  if ((x % 2 == 0 )) {
    _imp("Es par\n");
  } else {
    _imp("Es impar\n");
  }

  ent y = 21;
  if ( x > y ) {
      _imp("Es mayor a: %e\n", y);
  } else {
      _imp("Es menor a: %e\n", y);
  }
}

zro calcular_descuento(dec compra) {
   _imp("\n======= CALCULO DE DESCUENTO =======\n");
  dec descuento = compra * 0.20;
  dec total;

  if (compra > 300) {
    total = compra - descuento;
    _imp("La compra es de: %d\n", compra);
    _imp("El descuento es de: %d\n", descuento);
    _imp("El total a pagar es: %d\n", total);
  } else {
    total = compra;
    _imp("Sin descuentos, el total a pagar es: %d\n", total);
  }
}

bul es_bisiesto(ent anio) {
  regresar ((anio % 4 == 0) && ((anio % 100 <> 0) || (anio % 400 == 0)));
}

zro main() {
  incrementos_decrementos();
  sentencia_if(53);
  calcular_descuento(410);
  verificarAnio(2019);
  sentencia_switch(5);
  sentencia_switch(15);
}

zro verificarAnio(ent anio) {
  _imp("\n========= VERIFICAR AÑO %e =========\n", anio);
  _imp("El año %e ", anio);
  bul bien = es_bisiesto(anio);
  if (bien) {
    _imp("es bisieto.\n");
  } else {
    _imp("no es bisieto.\n");
  }
}

zro sentencia_switch(ent n) {
  _imp("\n================ PEQUEÑA PRUEBA DE SWITCH ================\n");
  switch (n) {
    case 4 + 1:
      _imp("Opcion 5\n");
      romper;
    case 7:
      _imp("Opcion 7\n");
      romper;
    case 6:
      _imp("Opcion 6\n");
      romper;
    default:
      _imp("Opcion default\n");
  }
  _imp("Fuera del switch\n");
}