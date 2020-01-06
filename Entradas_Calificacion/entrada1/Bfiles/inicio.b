ent listo;
Rbton miBoton; //un boton


zro R:iniciar_ventana(){
	_Nuevo_GUI(miBoton); // se inicializa la variable miBoton
	miBoton.settexto("listo?");
	miBoton.setancho(100);
	miBoton.setalto(70);
	miBoton.setpos(50,65);// pos en X y Y dentro de la ventana.

	//la siguiente funcion puede venir o no
	_alto_y_ancho(200,100);
	listo = 0;
}

zro miBoton:al_dar_click(){
	listo = 1;
	Rmensaje("Relajado, relajado ..."); //un cuadro de mensaje
}
