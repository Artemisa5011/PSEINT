Algoritmo NOTAS
	Definir NOTA,L,PROM Como Real
	ACUM=0
	
	Para L=1 HASTA 3 Con Paso 1 Hacer
		Escribir "DIGITA LA NOTA DEL ESTUDIANTE: "
		LEER NOTA
		ACUM=ACUM+NOTA
	FinPara
	PROM=ACUM/3
	Imprimir "EL PROMEDIO ES: " PROM
	
FinAlgoritmo
