programa:funciones.o main.c gfx.c
	gcc  main.c funciones.o gfx.c -o programa -lX11 

funciones.o: funciones.c funciones.h
	gcc -c funciones.c funciones.h

graficos: graficos.c 
	gcc -o holaMundo graficos.c `pkg-config --cflags --libs gtk4`
