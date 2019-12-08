zro main() {
  char hola[] = "Hola perro";
  char s2[] = "Codigo R";
  char s1[];
  _copi(s1, s2);
  char mensaje[] = "Este archivo contiene %s \n";

  _imp(hola);
  _imp("\n");
  _imp(mensaje, s1);
}
