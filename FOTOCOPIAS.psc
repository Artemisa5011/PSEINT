Algoritmo NEGO_COPIAS//YEDWIN PALACIOS Y MARTHA DAVID LONDOÑO//
	Definir COP_SOLI,LIM_PROD,N_SOL, i,TIP_IMPRE,TOTAL_OFF Como REAL
	ACU_OFF=0
	ACU_EST=0
	offset=10000
	estandar=50000
	Escribir "INGRESA LA CANTIDAD DE CLIENTES: "
	LEER N_SOL
	PARA i=1 HASTA N_SOL Con Paso 1 Hacer
		Escribir "DIGITA EL TIPO DE IMPRESION 1=offset ó 2=estandar): "
		Leer TIP_IMPRE
		Escribir "DIGITE EL NUMERO DE COPIAS: "
		LEER COP_SOLI
		SI TIP_IMPRE=1 Entonces
			ACU_OFF=ACU_OFF+COP_SOLI
			SI ACU_OFF<=offset Entonces
				TOTAL_OFF=offset-ACU_OFF
				Imprimir "SE TIENE DISPONIBILIDAD DE IMPRESION: " TOTAL_OFF
			SiNo
				SI ACU_OFF>offset Entonces
					ACU_OFF=ACU_OFF-COP_SOLI
					TOTAL_OFF=offset-ACU_OFF
					Imprimir "NO HAY DISPONIBILIDAD DE IMPRESION: " TOTAL_OFF
				FinSi
				
			FinSi
			
		SiNo
			SI TIP_IMPRE=2 Entonces
				ACU_EST=ACU_EST+COP_SOLI
				SI ACU_EST<=estandar Entonces
					TOTAL_EST=estandar-ACU_EST
					Imprimir "SE TIENE DISPONIBILIDAD DE IMPRESION: " TOTAL_EST
				SiNo
					SI ACU_EST>estandar Entonces
						ACU_EST=ACU_EST-COP_SOLI
						TOTAL_EST=estandar-ACU_EST
						Imprimir "NO HAY DISPONIBILIDAD DE IMPRESION: " TOTAL_EST
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara


FinAlgoritmo
