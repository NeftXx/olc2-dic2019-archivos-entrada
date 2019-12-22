ent a = ((4 + 4) + 8 * 8) / 9 / 8;
ent b = 0;

zro main() {
  dec c = a * b;
  bul d;
  //  d = !c; // esto deberia mostrar error
  ent aux = c;
  d = !aux;

  bul e = d && !d;

  /*
   * NOTA: El imprimir aun no funciona como deberia ser
   *
   * a = 1
   * b = 0
   * c = 0
   * d = true
   * e = false
   */
  /*
  _imp("%e\n", a);
  _imp("%e\n", b);
  _imp("%e\n", c);
  _imp("%b\n", d);
  _imp("%b\n", e);
  _imp("%e\n", 1 + 7 + 6 * 8);
  */

  /************************* ARITMETICOS ****************************/
  /*
   * SUMA
   */
  _imp("===== SUMA =====\n");
  _imp("%d\n", 100 + 4.9); // 104.9
  _imp("%d\n", 17.8 + 'a'); // 114.8
  _imp("%d\n", 2.5 + 2.5); // 5.0
  _imp("%e\n", 8 + 'a'); // 105
  _imp("%e\n", 10 + 15); // 25
  _imp("%e\n", 'a' + 'a'); // 194

  /*
   * RESTA
   */
  _imp("\n===== RESTA =====\n");
  _imp("%d\n", 8 - 1.5); // 6.5
  _imp("%d\n", 200.0 - 'b'); // 102.0
  _imp("%d\n", 3.5 - 3.5); // 0
  _imp("%e\n", 95 - 'd'); // -5
  _imp("%e\n", 50 - 10); // 40

  /*
   * MULTIPLICACION
   */
  _imp("\n===== MULTIPLICACION =====\n");
  _imp("%d\n", 10.25 * 12.3); // 126.075
  _imp("%d\n", 20.1 * 5); // 100.5
  _imp("%d\n", 2.5 * 'b'); // 245.0
  _imp("%d\n", 3.5 * 8.5); // 29.75
  _imp("%e\n", 2 * 'a'); // 194
  _imp("%e\n", 'd' * -3); // -300

  /*
   * DIVISION
   */
  _imp("\n===== DIVISION =====\n");
  _imp("%d\n", 15 / 5.0); // 3.0
  _imp("%d\n", 250.0 / 'x'); // 2.083
  _imp("%e\n", 3 / 2); // 1
  _imp("%e\n", 'a' / 8); // 12

  /*
   * POTENCIA
   */
  _imp("\n===== POTENCIA =====\n");
  _imp("%e\n", 2 ^ 5); // 32
  _imp("%e\n", 'a' ^ 2); // 9409

  /*
   * MODULO
   */
  _imp("\n===== MODULO =====\n");
  _imp("%d\n", 16 % 3.5); // 2.0
  _imp("%d\n", 'a' % 94.5); // 2.5
  _imp("%d\n", 10.5 % 3.4); // 0.3
  _imp("%e\n", 10 % 3); // 1
  _imp("%e\n", 'b' % 100); // 98

  /************************* RELACIONALES ****************************/

  _imp("\n===== RELACIONALES =====\n");
  _imp("%b\n", 15 < 10); // false
  _imp("%b\n", 4.5 < 3); // false
  _imp("%b\n", 50.58 >= 'b'); // false
  _imp("%b\n", 'b' <= 107); // true
  _imp("%b\n", 'a' <= 100); // true
  _imp("%b\n", 200.25 > 52.2); // true
  _imp("%b\n", 0 <= 0); // true
  _imp("%b\n", 'a' < 'a'); // false

  _imp("%b\n", 50 == 50.0); // true
  _imp("%b\n", 5.5 <> 30); // true
  _imp("%b\n", 'a' == 'a'); // true
  _imp("%b\n", 1.2 <> 1.2); // false
  _imp("%b\n", true == true); // true
  _imp("%b\n", true <> true); // false
}

// FIN DE EXPRESIONES