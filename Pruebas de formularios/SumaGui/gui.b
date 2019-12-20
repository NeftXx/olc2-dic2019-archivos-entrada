#definir CONSTANTE 25

Rlbl lblNum1;
RtxtN txtNum1;
Rlbl lblNum2;
RtxtN txtNum2;
Rbton btnSumar;

zro R:iniciar_ventana() {
  _Nuevo_GUI(lblNum1);
  _Nuevo_GUI(txtNum1);
  _Nuevo_GUI(lblNum2);
  _Nuevo_GUI(txtNum2);
  _Nuevo_GUI(btnSumar);

  lblNum1.setancho(CONSTANTE * 2); // 50
  lblNum1.setpos(CONSTANTE * 2, CONSTANTE * 2); // x: 50, y: 50
  lblNum1.settexto("Numero 1");

  txtNum1.setancho(CONSTANTE * 3); // 75
  txtNum1.setpos(CONSTANTE * 5 + 10, CONSTANTE * 2); // x: 135, y: 50
  txtNum1.settexto("2");

  lblNum2.setancho(CONSTANTE * 2); // 50
  lblNum2.setpos(CONSTANTE * 2, CONSTANTE * 4); // x: 50, y: 100
  lblNum2.settexto("Numero 2");

  txtNum2.setancho(CONSTANTE * 3); // 75
  txtNum2.setpos(CONSTANTE * 5 + 10, CONSTANTE * 4); // x: 135, y: 100
  txtNum2.settexto("2");

  btnSumar.settexto("Sumar");
  btnSumar.setpos(CONSTANTE * 6, CONSTANTE * 6); // x: 150, y: 150

  _alto_y_ancho(265, 345); // alto: 265, ancho: 345
}

zro btnSumar:al_dar_click() {
  Rstring strNum1 = txtNum1.gettexto();
  Rstring strNum2 = txtNum2.gettexto();

  chr chrNum1[_pesode(strNum1)];
  chr chrNum2[_pesode(strNum2)];
  chrNum1 = _atxt(strNum1);
  chrNum2 = _atxt(strNum2);

  ent num1 = _aent(chrNum1);
  ent num2 = _aent(chrNum2);

  Rmensaje("La suma es: %e", num1 + num2); // muestra la suma
}
