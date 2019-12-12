zro main() {
  chr hola[] = "Hola perro";
  chr s2[] = "Codigo R";
  chr s1[];
  s1 = s2;
  chr mensaje[] = "Este archivo contiene %s \n";

  _imp(hola);
  _imp("\n");
  _imp(mensaje, s1);

  chr lenguajes[][] = {"java", "pascal", "javascript", "python", "c#", "c++", "c"};

  _imp("%s \n", lenguajes[0]);
  _imp("%s \n", lenguajes[1]);
  _imp("%s \n", lenguajes[2]);
  _imp("%s \n", lenguajes[3]);
  _imp("%s \n", lenguajes[4]);
  _imp("%s \n", lenguajes[5]);
  _imp("%s \n", lenguajes[6]);

  chr lenguajes2[7][11] = {"java", "pascal", "javascript", "python", "c#", "c++", "c"};

  _imp("%s \n", lenguajes2[0]);
  _imp("%s \n", lenguajes2[1]);
  _imp("%s \n", lenguajes2[2]);
  _imp("%s \n", lenguajes2[3]);
  _imp("%s \n", lenguajes2[4]);
  _imp("%s \n", lenguajes2[5]);
  _imp("%s \n", lenguajes2[6]);
}
