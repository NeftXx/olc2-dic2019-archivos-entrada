fusion persona{
    ent edad;
    chr nombre;
    persona siguiente;
};

zro main() {
    persona per = _reservar(_pesode(persona));
    per.edad=5;

    per.siguiente=_reservar(_pesode(persona));
    per.siguiente.edad=7;
    per.siguiente.siguiente=_reservar(_pesode(persona));
    per.siguiente.siguiente.siguiente=per;

    per.edad=9;

    _imp("%e", per.edad);                //9
    _imp("\n");
    _imp("%e", per.siguiente.edad);      //7
    _imp("\n");
    _imp("%e", per.siguiente.siguiente.edad);  //0
    _imp("\n");
    _imp("%e", per.siguiente.siguiente.siguiente.edad);  //9

    per.siguiente.siguiente.siguiente.siguiente=per.siguiente.siguiente.siguiente.siguiente.siguiente;

    _imp("\n");
    _imp("%e", per.siguiente.siguiente.siguiente.siguiente.edad);              //9
    _imp("\n");
    _imp("%e", per.siguiente.siguiente.siguiente.siguiente.siguiente.edad);   //0

}