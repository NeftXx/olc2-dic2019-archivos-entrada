#importar "UI/frame.b"
#importar "funciones.m"
#definir varConst 25


zro main(){
  _imp("===================== INICIO =====================\n");
  bienvenida("a todos");
  chr asdf[] = voltear("hola mundo");
  _imp("El valor volteado es: %s\n",asdf);
  //jalar graficos
  _abrir_ventana(frame);
  _imp("===== SALIDA DESPUES DEL FRAME\n");
  _imp("constante_por_dos = %d \n", constante_por_dos());
  _imp("multiplicar(4, 5) = %e", multiplicar(4,5));

}


zro bienvenida(chr a[]){	
  _imp("hola %s",a); 
  _imp("\n");

}


chr[] voltear(chr a[]){
  ent size = _pesode(a);
  ent index1 = size - 1;
  ent index2; // 0
  chr retorno[size];

  while (index1 >= 0){
    _imp("a[%e] = %c ",index1,a[index1]);
    retorno[index2] = a[index1];
    index1--;
    index2++;
  }
  _imp("\n");
  // ej: "abc" -> "cba"
  regresar retorno;

}

