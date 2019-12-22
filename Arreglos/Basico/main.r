zro main() {
  _imp("=========== PRUEBA DE ARREGLOS ===========\n");
  ent a = 2;
  ent b = 3;

  ent c[a][b];
  c[a-1][b-2]= a+b;
  c[0][0]= 1;
  c[0][1]= 1;

  _imp("El valor asignado al arreglo es: %e\n", c[c[0][0]][c[0][1]]);
  _imp("El valor asignado al arreglo + 5 * 10 / 2 es: %e\n", c[c[0][0]][c[0][1]] + 5 * 10 / 2);

  dec d[c[c[0][0]][c[0][1]]][c[c[0][0]][c[0][1]]][c[c[0][0]][c[0][1]]];
  d[c[c[0][0]][c[0][1]]-1][c[c[0][0]][c[0][1]]-2][c[c[0][0]][c[0][1]]-3]= 10.0;
  d[c[c[0][0]][c[0][1]]-3][c[c[0][0]][c[0][1]]-2][c[c[0][0]][c[0][1]]-1]= 20.0;
  _imp("El resultado de de los valores anteriores es: %d\n", d[c[c[0][0]][c[0][1]]-1][c[c[0][0]][c[0][1]]-2][c[c[0][0]][c[0][1]]-3] * d[c[c[0][0]][c[0][1]]-3][c[c[0][0]][c[0][1]]-2][c[c[0][0]][c[0][1]]-1]);

  ent x[2][2];
  ent y[] = x[0];
  y[0] = 1;
  y[1] = 2;
  _imp("y[0] = %e \n", y[0]);
  _imp("y[1] = %e \n", y[1]);
  _imp("x[0][0] = %e \n", x[0][0]);
  _imp("x[0][1] = %e \n", x[0][1]);
  _imp("x[1][0] = %e \n", x[1][0]);
  _imp("x[1][1] = %e \n", x[1][1]);

  chr j[5] = "holaqw";
}
