Algoritmo COMPRA_CASA//YEDWIN PALACIOS Y MARTHA DAVID LONDOÑO//
	Definir NOM,CIU,EST_CIVIL Como TEXTO
    Definir CED,V_CASA,i,NU_CLI,TOTAL Como REAL
	
	Escribir "Ingrese la cantidad de clientes a evaluar: "
    Leer NU_CLI	
	
	Para i=1 Hasta NU_CLI Con Paso 1 Hacer
		Escribir "INGRESA EL NOMBRE DEL CLIENTE: " i
		Leer NOM	
		Escribir "INGRESA LA CEDULA DEL CLIENTE: " i
		Leer CED	
		Escribir "INGRESA LA CIUDAD DEL CLIENTE: " i
		Leer CIU	
		Escribir "ESTADO CIVIL DEL CLIENTE: " i
		Leer EST_CIVIL	
		Escribir "DIGITA EL VALOR DE LA CASA: " i
		Leer V_CASA	
		SI V_CASA<50600000 Entonces
			TOTAL=V_CASA/2
			Imprimir "SR(O/A) ", NOM, " COMPRAR CASA DE CONTADO EN DOS CUOTAS C/U DE: " TOTAL
		SiNo
			SI V_CASA >= 50600000 Y V_CASA < 86750000 Entonces
				Imprimir "SR(O/A) ", NOM, " COMPRAR TITULO DE VALORES QUE POSEE"
			SiNo
				SI V_CASA >= 86750000 Entonces
					Imprimir  "SR(O/A) ", NOM, " HACER PRESTAMO EN EL BANCO DE OCCIDENTE"
			FinSi
		FinSi	
	FinSi
FinPara
Imprimir  "PROCESO FINALIZADO ", NU_CLI
FinAlgoritmo

