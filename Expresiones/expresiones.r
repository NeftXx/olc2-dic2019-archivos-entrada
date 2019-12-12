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
  _imp(a);
  _imp(b);
  _imp(c);
  _imp(d);
  _imp(e);
  _imp(1 + 7 + 6 * 8);
  */

  /************************* ARITMETICOS ****************************/
  /*
   * SUMA 
   */
  _imp(100 + 4.9); // 104.9
  _imp(17.8 + 'a'); // 114.8
  _imp(2.5 + 2.5); // 5.0
  _imp(8 + 'a'); // 105
  _imp(10 + 15); // 25
  _imp('a' + 'a'); // 194

  /*
   * RESTA
   */
  _imp(8 - 1.5); // 6.5
  _imp(200.0 - 'b'); // 102.0
  _imp(3.5 - 3.5); // 0
  _imp(95 - 'd'); // -5
  _imp(50 - 10); // 40

  /*
   * MULTIPLICACION
   */
  _imp(10.25 * 12.3); // 126.075
  _imp(20.1 * 5); // 100.5
  _imp(2.5 * 'b'); // 245.0
  _imp(3.5 * 8.5); // 29.75
  _imp(2 * 'a'); // 194
  _imp('d' * -3); // -300 fallo

  /*
   * DIVISION
   */
  _imp(15 / 5.0); // 3.0
  _imp(250.0 / 'x'); // 2.083
  _imp(3 / 2); // 1
  _imp('a' / 8); // 12

  /*
   * POTENCIA
   */
  _imp( 2 ^ 5); // 32
  _imp('a' ^ 2); // 9409

  /*
   * MODULO
   */
  _imp(16 % 3.5); // 2.0
  _imp('a' % 94.5); // 2.5
  _imp(10.5 % 3.4); // 0.3
  _imp(10 % 3); // 1
  _imp('b' % 100); // 98

  /************************* RELACIONALES ****************************/
  
  _imp(15 < 10); // false
  _imp(4.5 < 3); // false
  _imp(50.58 >= 'b'); // false
  _imp('b' <= 107); // true
  _imp('a' <= 100); // true
  _imp(200.25 > 52.2); // true
  _imp(0 <= 0); // true
  _imp('a' < 'a'); // false
  
  _imp(50 == 50.0); // true
  _imp(5.5 <> 30); // true
  _imp('a' == 'a'); // true
  _imp(1.2 <> 0.2); // false fallo
  _imp(true == true); // true
  _imp(true <> true); // false
}

// FIN DE EXPRESIONES