Algoritmo CONTADOR_LUZ //YEDWIN PALACIOS Y MARTHA DAVID LONDOÑO//
	Definir VAL_ANTI,VAL_NUEVO,i, NU_CLI Como NUMERICO
	Definir NOM Como Caracter
	CUO=8600
	TRA_1=300
	TRA_2=250
	TRA_3=280
	TRA_4=170
	VA_1=200
	VA_2=250
	VAL_3=450
	PAGO = 0
	Escribir "Ingrese el número de usuarios a procesar: "
    Leer NU_CLI
	Para i=1 Hasta NU_CLI Con Paso 1 Hacer
		Escribir "INGRESA EL NOMBRE DEL USUARIO: " i
		LEER NOM
		Escribir "INGRESA EL VALOR DEL ANTIGUO CONTADOR: "
		LEER VAL_ANTI
		Escribir "INGRESA EL VALOR DEL NUEVO CONTADOR: "
		LEER VAL_NUEVO
		CONSUMO=VAL_NUEVO-VAL_ANTI
		SI CONSUMO<=0 Entonces
			Imprimir  "El valor nuevo debe ser mayor que el valor antiguo para un consumo válido."
			
		FinSi
		
		SI CONSUMO<=200 Entonces
			PAGO=(CONSUMO*TRA_1)
			Imprimir "EL VALOR " PAGO
		SiNo
			SI CONSUMO>=201 Y CONSUMO<=450 Entonces
				RES_CON=CONSUMO-VA_1
				PAGO=VA_1*TRA_1+(RES_CON*TRA_3)
				Imprimir "EL VALOR " PAGO
			SiNo
				RES_CON2=CONSUMO-VAL_3
				PAGO=(VA_1*TRA_1)+(VA_2*TRA_3)+(RES_CON2*TRA_4)
			FinSi
		FinSi
		total_pagar = PAGO + CUO
		Escribir "El total del consumo en kWh: ", consumo
		Escribir "El total a pagar: $ ", total_pagar
	FinPara

	Imprimir  "PROCESO FINALIZADO ", NU_CLI
	
FinAlgoritmo
