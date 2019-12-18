zro main() {
  chr hola[] = "Hola perro";
  chr s2[] = "Codigo R";
  chr s1[] = s2;

  chr mensaje[] = "Este archivo contiene %s \n";

  _imp(hola);
  _imp("\n");
  _imp(mensaje, s1);

  chr lenguajes[][] = {"java", "pascal", "javascript", "python", "c#", "c++", "c"};

  _imp("Lenguajes de programacion: ");
  ent i = 0;
  while(i < 7) {
    _imp("%s ", lenguajes[i]);
    i++;
  }
  
}
