Algoritmo CAMISAS
	DEFINIR VAL_CAMI,CAMI,TOTAL Como Real
	ACUM_CAM=0
	DOLAR=4250
	Para CAMI=1 Hasta 5 Con Paso 1 Hacer
		Escribir "INGRESA EL VALOR DE LA CAMISA EN DOLARES: " CAMI
		LEER VAL_CAMI
		ACUM_CAM=ACUM_CAM+VAL_CAMI
	FinPara
	TOTAL=ACUM_CAM*DOLAR
	Imprimir "EL VALOR A PAGAR: $ " TOTAL
FinAlgoritmo
