fusion B {
  ent b;
};

fusion A {
  ent a;
  B sig;
};

fusion C {
  ent c;
  A sig;
};

zro main() {
  C cc = _reservar(_pesode(C));
  cc.sig = _reservar(_pesode(A));
  cc.sig.sig = _reservar(_pesode(B));

  cc.c = 12;
  cc.sig.a = 45;
  cc.sig.sig.b = 9;

  _imp(cc.c + cc.sig.a + cc.sig.sig.b);
}
