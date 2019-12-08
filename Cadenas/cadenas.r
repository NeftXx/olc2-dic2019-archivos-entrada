zro main() {
  char hola[] = "Hola perro";
  char s2[] = "Codigo R";
  char s1[];
  _copi(s1, s2);
  char mensaje[] = "Este archivo contiene %s \n";

  _imp(hola);
  _imp("\n");
  _imp(mensaje, s1);

  char lenguajes[][] = {"java", "pascal", "javascript", "python", "c#", "c++", "c"};

  _imp("%s \n", lenguajes[0]);
  _imp("%s \n", lenguajes[1]);
  _imp("%s \n", lenguajes[2]);
  _imp("%s \n", lenguajes[3]);
  _imp("%s \n", lenguajes[4]);
  _imp("%s \n", lenguajes[5]);
  _imp("%s \n", lenguajes[6]);

  char lenguajes2[7][11] = {"java", "pascal", "javascript", "python", "c#", "c++", "c"};

  _imp("%s \n", lenguajes2[0]);
  _imp("%s \n", lenguajes2[1]);
  _imp("%s \n", lenguajes2[2]);
  _imp("%s \n", lenguajes2[3]);
  _imp("%s \n", lenguajes2[4]);
  _imp("%s \n", lenguajes2[5]);
  _imp("%s \n", lenguajes2[6]);
}
