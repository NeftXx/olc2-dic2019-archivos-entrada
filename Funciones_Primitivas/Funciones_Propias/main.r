zro main() {
  chr a[5];
  ent b = 123;
  a = _atxt(b);
  _imp("El valor de 'a' deberia ser 123 y es: %s\n", a);

  chr c[5] = "123";
  chr d[] = "si";

  _conc(c, d);
  _imp("El valor de 'c' deberia ser 123si y es: %s\n", c);

  chr e[] = "123";
  ent f;
  f = _aent(e);
  _imp("El valor de 'f' debereria ser 123 y es: %e\n", f);

  chr g[] = "123.6";
  dec h;
  h = _adec(g);
  _imp("El valor de 'h' deberia ser 123.6 y es: %d\n", h);

  _imp("son iguales\? %b", _eqls("hola", "hola"));
}