fusion persona{
    ent edad;
    chr nombre;
    persona siguiente;
}

zro main() {
    persona per;
    per=3;
    per.edad=5;

    per.siguiente=3;
    per.siguiente.edad=7;
    per.siguiente.siguiente=3;
    per.siguiente.siguiente.siguiente=per;

    per.edad=9;

    _imp(per.edad);                //9
    _imp('\n');
    _imp(per.siguiente.edad);      //7
    _imp('\n');
    _imp(per.siguiente.siguiente.edad);  //0
    _imp('\n');
    _imp(per.siguiente.siguiente.siguiente.edad);  //9

    per.siguiente.siguiente.siguiente.siguiente=per.siguiente.siguiente.siguiente.siguiente.siguiente;

    _imp('\n');
    _imp(per.siguiente.siguiente.siguiente.siguiente.edad);              //9
    _imp('\n');
    _imp(per.siguiente.siguiente.siguiente.siguiente.siguiente.edad);   //0

}