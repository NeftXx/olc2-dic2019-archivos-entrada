#definir SIZE 10

fusion Alumno
{
  chr nombre[50];
  chr carnet[10];
  chr telefono[9];
  chr direccion[50];
  ent esAlta;
};

fusion Tabla
{
  Alumno alumnos[SIZE];
  ent elementos;
  dec factorcarga;
};

ent transforma(chr clave[]) {
  ent j;
  ent d = 0;
  ent size = _pesode(clave);
  for (j = 0; j < size; j++) {
    d = d * 27 + clave[j];
  }
  if (d >= 0) {
    regresar d;
  }
  regresar -d;
}

ent direccion(Tabla tabla, chr clave[]) {
  ent i = 0;
  ent p;
  ent d;
  d = transforma(clave);
  p = d % SIZE;
  while(tabla.alumnos[p] <> nlo && !_eqls(tabla.alumnos[p].carnet, clave)) {
    i++;
    p = p + i * i;
    p = p % SIZE;
  }

  regresar p;
}

zro insertar(Tabla tabla, chr nombre[], chr carnet[], chr telefono[], chr direccion[])
{
  Alumno alumno = _reservar(_pesode(Alumno));
  alumno.nombre = nombre;
  alumno.carnet = carnet;
  alumno.telefono = telefono;
  alumno.direccion = direccion;
  alumno.esAlta = 1;
  ent posicion = direccion(tabla, carnet);
  tabla.alumnos[posicion] = alumno;
  tabla.elementos++;
  tabla.factorcarga = tabla.elementos / (SIZE * 1.0);
  _imp("Cantidad de elementos = %e, Factor de carga actual = %d\n", tabla.elementos, tabla.factorcarga);
  if(tabla.factorcarga > 0.5)
  {
    _imp("Factor de Carga supera el 50% de la tabla\n");
  }
}

zro imprimirTabla(Tabla tabla) {
  ent size = SIZE;
  Alumno alumno;
  for (ent k = 0; k < size; k++) {
    alumno = tabla.alumnos[k];
    if (alumno <> nlo) {
       _imp("Alumno[%e] = %s %s %s %s\n", k, alumno.nombre, alumno.carnet, alumno.telefono, alumno.direccion);
    }
  }
}

zro main() {
  Tabla tablaAlumnos = _reservar(3);
  insertar(tablaAlumnos, "Alumno 1", "201512345", "12345678", "direccion 1");
  insertar(tablaAlumnos, "Alumno 2", "201854321", "12345678", "direccion 2");
  insertar(tablaAlumnos, "Alumno 3", "201998345", "12345678", "direccion 3");
  insertar(tablaAlumnos, "Alumno 4", "201935321", "12345678", "direccion 4");
  insertar(tablaAlumnos, "Alumno 5", "201527845", "12345678", "direccion 5");
  insertar(tablaAlumnos, "Alumno 6", "201679021", "12345678", "direccion 6");
  insertar(tablaAlumnos, "Alumno 6", "201679021", "12345678", "direccion 6");
  _imp("\n============ ALUMNOS ACTUALES ============\n");
  imprimirTabla(tablaAlumnos);
  _imp("Cantidad de elementos = %e \n", tablaAlumnos.elementos);
  _imp("Factorcarga = %d", tablaAlumnos.factorcarga);
}