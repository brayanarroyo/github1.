Proceso sin_titulo
	Escribir "�Desea reservar? |SI| |NO|"
	leer resp
	contador<-0
	Mientras resp='SI' Hacer
		Escribir "Ingrese su nombre"
		leer nombre
		Escribir "Eliga el tipo de habitaci�n de acuerdo su n�mero: 							|1| Sencilla| |2| Doble| |3| Triple|"
		leer th
		Escribir "Ingrese los d�as de Estad�a"
		leer dias
		Segun th Hacer
			1: costo<-500*dias
				c1<-c1+1
			2: costo<-750*dias
				c2<-c2+1
			3: costo<-1000*dias
				c3<-c3+1
			De Otro Modo:
				Escribir "El n�mero no es valido"
			Fin Segun
			Si dias>3 Entonces
				descuento<-costo*.15
				costo<-costo-descuento
			Sino
				costo<-costo
			Fin Si
			mt<-mt+costo
			Escribir "Costo de la reservaci�n: $" costo 
			Escribir "�Desea reservar de nuevo? |SI| |NO|"
			leer resp
			contador<-contador+1
		Fin Mientras
		p1<-c1*100/contador
		Escribir "Total de reservaciones de la habitaci�n sencilla: " c1 " que equivale al " p1 "% de reservaciones."
		p2<-c2*100/contador
		Escribir "Total de reservaciones de la habitaci�n sencilla: " c2 " que equivale al " p2 "% de reservaciones."
		p3<-c3*100/contador
		Escribir "Total de reservaciones de la habitaci�n sencilla: " c3 " que equivale al " p3 "% de reservaciones."
		Escribir "El monto total es: $" mt 
FinProceso
