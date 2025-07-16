Algoritmo HOSPITAL
	Repetir
		//mostrar menu
		Limpiar Pantalla
		Escribir "====== BIENVENIDO AL HOSPITAL H/H ======"
		Escribir "1.INGRESO POR URGENCIAS"
		Escribir "2.FARMACIA"
		Escribir "3.CONSULTORIOS"
		Escribir "4.AGENDAR CITAS"
		Escribir "5.DISPONIBILIDAD QUIROFANOS"
		Escribir "6.HOSPITALIZACION"
		Escribir "7.CONTROL_MEDICO"
		Escribir "8.LABORATORIO"
		Escribir "9.VACUNACION"
		Escribir "10.salir"
		Escribir "Seleccione una opcion del (1-10)"
		Leer OP
		Segun OP hacer
			1:
				Escribir "--- INGRESO POR URGENCIAS ---"
				Definir nom,alergico, Res_Alta Como caracter
				Definir iva,id,G_Med,Tip_Afilia,T_IVA,edad,noches,V_Base,T_pago Como Real
				v_iva=0.19
				G_Med=100000
				v_coti=0
				v_bene=200000
				v_sis=100000 
				V_otro=500000
				
				Repetir
					Escribir "Digita el nombre del paciente:"
					Leer nom		
					Escribir "Digita el ID del paciente sin puntos:"
					Leer id		
					Escribir "Digita la edad del paciente:"
					Leer edad		
					Escribir "Tipo de afiliaci�n:"
					Escribir "1.COTIZANTE"
					Escribir "2.BENEFICIARIO"
					Escribir "3.SISBEN"
					Escribir "4.NINGUNO"
					Leer Tip_Afilia
					Imprimir "Se ingreso el paciente con Cod_Hisoria:" id "* " nom
					Escribir "�Paciente continua en urgencias? (S/N):"
					Leer Res_Alta
					
					Si Res_Alta = "NO" o Res_Alta = "no" o Res_Alta = "No" o Res_Alta = "n" o Res_Alta = "N" Entonces
						Escribir "Ingrese la cantidad de noches que estuvo el paciente:"
						Leer noches			
						Segun Tip_Afilia Hacer
							Caso 1:
								Imprimir "No se cobra nada"
							Caso 2:
								V_Base=(noches*v_bene)
							Caso 3:
								V_Base=(noches*v_sis)
							Caso 4:
								V_Base=(noches*V_otro)
							De Otro Modo:
								Imprimir  "Se ingresa paciente como opc.4."
								
						FinSegun			
						iva=V_Base*v_iva
						T_IVA=V_Base+G_Med-iva			
						Imprimir "El total a pagar por el paciente Nombre: " nom " es: $" T_IVA			
					Sino
						Imprimir "El paciente contin�a en urgencias..." nom "con id: " id
					FinSi
					
				Hasta Que Res_Alta= "NO" o Res_Alta = "no" o Res_Alta = "No" o Res_Alta = "n" o Res_Alta = "N"	
				Imprimir "El paciente fue dado de alta."
			2:
				Escribir "--- FARMACIA ---"
				Definir Id,cant_med,precio,iva,total,i, con_total Como Real
				Definir nom, cod_med Como Caracter
				con_total=0
				iva=0.19
				con_medi=0
				Escribir "Digita la identificacion sin puntos: "
				leer Id
				Escribir "Ingresa Nombre del Afiliado"
				leer nom
				Escribir "Digita la cantidad de medicamentos a reclamar"
				leer cant_med
				Para i=1 Hasta cant_med Hacer
					Escribir "Ingresa precio del medicamento: " i
					leer precio
					Escribir "Ingresa el codigo del medicamento: " i
					leer cod_med
					con_total=con_total+precio
				FinPara
				total=con_total+(con_total*iva)
				Imprimir "Valor sin IVA: " con_total
				Imprimir "Valor a pagar despues de IVA: " total
		    3:
				Escribir "--- CONSULTORIOS ---"
				Definir cons,cant_citas,cont_pedi,cont_gene,cont_inter Como Real
				Definir continuar Como Caracter
				continuar="SI"
				cant_citas=3 //indicar la cantidad de citas que pueden atender//
				cont_pedi=0
				cont_gene=0
				cont_inter=0
				Mientras continuar="SI" o continuar="Si" o continuar="S" o continuar="s" o continuar="si" Hacer
					Escribir "Seleccione el tipo de consultorio:"
					Escribir "1. Pediatr�a"
					Escribir "2. M�dico General"
					Escribir "3. Internista"
					Leer cons
					Segun cons hacer
						1:
							Si cont_pedi< cant_citas Entonces
								cont_pedi=cont_pedi+1
								Imprimir "Se reserva consultorio de Pediatr�a. Quedan ", cant_citas - cont_pedi, " cupos."
							Sino
								Imprimir "Consultorio de Pediatr�a sin cupo."
							FinSi
						2:
							Si cont_gene < cant_citas Entonces
								cont_gene=cont_gene+1
								Imprimir "Se reserva consultorio de M�dico General. Quedan ", cant_citas - cont_gene, " cupos."
							Sino
								Imprimir "Consultorio de M�dico General sin cupo."
							FinSi
						3:
							Si cont_inter < cant_citas Entonces
								cont_inter=cont_inter+1
								Imprimir "Se reserva consultorio de Internista. Quedan ", cant_citas - cont_inter, " cupos."
							Sino
								Imprimir "Consultorio de Internista sin cupo."
							FinSi
						De Otro Modo:
							Imprimir "Consultorio no v�lido."
					FinSegun
					Escribir "�Quiere asignar otro consultorio(S/N) ?"
					Leer continuar
				FinMientras
				Imprimir "Citas en Pediatr�a: " cont_pedi
				Imprimir "Citas en M�dico General: " cont_pedi
				Imprimir "Citas en Internista: " cont_inter
	        4:
				Escribir "--- CITAS CONSULTORIOS ---"
				Definir cons,cant_citas,cont_pedi,cont_gene,cont_inter,hora,dia Como Real
				Definir continuar,nom Como Caracter
				continuar="SI"
				cant_citas=3 //indicar la cantidad de citas que pueden atender//
				cont_pedi=0
				cont_gene=0
				cont_inter=0
				Mientras continuar="SI" o continuar="Si" o continuar="S" o continuar="s" o continuar="si" Hacer
					Escribir "Digita el nombre del paciente: "
					leer nom
					Escribir "Digita el numero del dia de la cita: "
					Escribir "1. Lunes" , " 2. Martes", " 3. Miercoles", " 4. Jueves", " 5. Viernes"
					leer dia
					Escribir "ingresa la hora en formato de 24 horas"
					leer hora
					Escribir "Seleccione el tipo de consultorio:"
					Escribir "1. Pediatr�a"
					Escribir "2. M�dico General"
					Escribir "3. Internista"
					Leer cons
					Segun cons hacer
						1:
							si dia=1 o dia=5 y hora>=6 Y hora<=12 Entonces
								si cont_pedi<cant_citas Entonces
									cont_pedi=cont_pedi+1
									Imprimir "Cita agendada con Pediatr�a para " nom
								SiNo
									Imprimir "Pediatr�a sin cupo disponible. Reprograme la cita."
								FinSi
							SiNo
								Imprimir "Consultorio de Pediatr�a sin cupo."
							FinSi
						2:
							si dia=1 o dia=2 o dia=3 o dia=4 o dia=5 y hora>=10 y hora<=16 Entonces
								Si cont_gene < cant_citas Entonces
									cont_gene=cont_gene+1
									Escribir "Cita agendada con Medico General. " nom
								Sino
									Escribir "Consultorio de Medico General sin cupo."
								FinSi
							SiNo
								Imprimir "Medico General solo atiende Lunes a Viernes de 10 AM a 4 PM."
							FinSi
						3:
							si dia=2 o dia=4 y hora>=8 y hora<=17 Entonces
								Si cont_inter < cant_citas Entonces
									cont_inter=cont_inter+1
									Imprimir "Cita agendada con Internista. " nombre
								Sino
									Escribir "Consultorio de Internista sin cupo."
								FinSi
							SiNo
								imprimir "Internista solo atiende Martes y Jueves de 8 AM a 5 PM."
							FinSi
						De Otro Modo:
							Escribir "Consultorio no v�lido."
					FinSegun
					Escribir "�Quiere asignar otra cita(S/N) ?"
					Leer continuar
				FinMientras
				imprimir "Citas asignadas en Pediatr�a: " cont_pedi
				imprimir "Citas asignadas en M�dico General: " cont_gene
				imprimir "Citas asignadas en Internista: " cont_inter
			5:
				Escribir "--- DISPONIBILIDAD QUIROFANOS ---"
				Definir Quiro_1,Quiro_2,Quiro_3,Quiro,uso Como Entero
				Definir RESP Como caracter
				Quiro_1=0
				Quiro_2=0
				Quiro_3=0
				uso=5
				Repetir
					Escribir "Quieres reservar un Quirofano (S/N):"
					Leer RESP
					Si RESP="SI" o RESP="si" o RESP="Si" o RESP="S" o RESP="s" Entonces			
						Escribir "Digita el n�mero de quirofano que necesitas (1, 2 o 3):"
						Leer Quiro		
						Segun Quiro Hacer
							Caso 1:
								Si Quiro_1< uso Entonces
									Quiro_1=Quiro_1+1
									Imprimir "Se Reserva quir�fano 1: " Quiro_1 "/" uso
								Sino
									Imprimir "Debes reprogramar.Quiro_1 supero el maximo de reservas."
								FinSi					
							Caso 2:
								Si Quiro_2< uso Entonces
									Quiro_2=Quiro_2+1
									Imprimir "Se Reserva quir�fano 2. Uso actual: " Quiro_2 "/" uso
								Sino
									Imprimir "Debes reprogramar.Quiro_2 supero el maximo de reservas."
								FinSi					
							Caso 3:
								Si Quiro_3 <uso Entonces
									Quiro_3=Quiro_3+1
									Escribir "Se Reserva quir�fano 3. Uso actual: " Quiro_3 "/" uso
								Sino
									Escribir "Debes reprogramar.Quiro_3 supero el maximo de reservas."
								FinSi
								
							De Otro Modo:
								Imprimir "N�mero de quir�fano inv�lido. Intente con 1, 2 o 3."
						FinSegun
					SiNo
						Imprimir "Fin de la reserva"
					FinSi  		
				Hasta Que RESP="NO" o RESP="No" o RESP="no" o RESP="N" o RESP="n"
				Imprimir "la disponibilidad esta asi: "
				Imprimir "Quirofano 1 tiene " Quiro_1 
				Imprimir "Quirofano 2 tiene " Quiro_2
				Imprimir "Quirofano 3 tiene " Quiro_3
			6:
				Escribir "--- HOSPITALIZACION ---"
				Definir i,id,num_paci,diagno,cont_influ,con_abdo,con_migra,cont_otroa Como Real
				Definir h_clinica,nom_med Como Caracter
				cont_influ=0
				con_abdo=0
				con_migra=0
				cont_otroa=0
				
				Escribir "Digita la cantidad de pacientes a ingresar"
				Leer num_paci
				Para i=1 Hasta num_paci Con Paso 1
					Escribir "Digita el numero de identificacion sin puntos: " i
					Leer id
					Escribir "Ingresa el codigo de la historia cl�nica:"
					Leer h_clinica
					Escribir "Escribe nombre del medico:"
					Leer nom_med
					Escribir "Ingrese el diagn�stico:"
					Escribir "1.Influenza"
					Escribir "2.Dolor abdominal"
					Escribir "3.Migra�a"
					Escribir "4. Otros"
					Leer diagno
					Si diagno=1 Entonces
						cont_influ=cont_influ+1
					Sino
						Si diagno=2 Entonces
							con_abdo=con_abdo+1
						Sino
							Si diagno=3 Entonces
								con_migra=con_migra+1
							Sino
								cont_otroa=cont_otroa+ 1
							FinSi
						FinSi
					FinSi
				FinPara
				Si cont_influ >= con_abdo Y cont_influ >= con_migra Y cont_influ >= cont_otroa Entonces
					Imprimir "La enfermedad mas recurrente es: Influenza"
				Sino
					Si con_abdo >= con_migra Y con_abdo >= cont_otroa Entonces
						Imprimir "La enfermedad mas recurrente es: Dolor abdominal"
					Sino
						Si con_migra >= cont_otroa Entonces
							Imprimir "La enfermedad mas recurrente es: Migra�a"
						Sino
							Imprimir "La enfermedad mas recurrente es: Otros"
						FinSi
					FinSi
				FinSi
				Imprimir "Cantidad de pacientes diagnosticados con Influenza: " cont_influ
				Imprimir "Cantidad de pacientes diagnosticados con Dolor abdominal: " con_abdo
				Imprimir "Cantidad de pacientes diagnosticados con Migra�a: " con_migra
				Imprimir "Otros diagnosticos son: " cont_otroa
			7:
				Escribir "--- CONTROL_MEDICO ---"
				Definir h_trabajo,h_falta,t_horas,cant_med,h_base,cont_Gene,cont_Pedi,cont_Ciru,cont_int,profe,cont_otro,prom_hora Como Real
				Definir nom,continuar Como Caracter
				h_base=42
				continuar="SI"
				t_horas=0
				cant_med=0
				cont_Gene=0
				cont_Pedi=0
				cont_Ciru=0
				cont_int=0
				cont_otro=0
				Mientras continuar="SI" o continuar="Si" o continuar="S" o continuar="s" o continuar="si" Hacer
					Escribir "Ingresa nombre del medico: "
					leer nom
					Escribir "Ingrese la profesi�n: "
					Escribir "1. General" , " 2. Pediatra", " 3. Cirujano", " 4. Internista" , " 5. Otro"
					Leer profe
					Segun profe Hacer
						1:
							cont_Gene=cont_Gene+1
						2:
							cont_Pedi=cont_Pedi+1
						3:
							cont_Ciru=cont_Ciru+1
						4:
							cont_int=cont_int+1
						5:
							cont_otro=cont_otro+1
						De Otro Modo:
							Imprimir "Se contar� en clasificaci�n como otro."
					FinSegun
					Escribir "Indica la cantidad de horas trabajadas en esta semana"
					leer h_trabajo
					si h_trabajo>=h_base Entonces
						Imprimir "El medico " nom  " ha trabajado " h_trabajo " horas. programar descanso."
					SiNo
						h_falta=h_base-h_trabajo
						Imprimir "El medico " nom " ha trabajado ", h_trabajo, " horas."
						Imprimir "Le faltan ", h_falta, " horas por laborar esta semana. Programar disponibilidad"
					FinSi
					t_horas=t_horas+h_trabajo
					cant_med=cant_med+1
					Si cant_med>= 0 Entonces
						prom_hora=t_horas/cant_med
						
					FinSi
					Escribir "�Desea ingresar otro m�dico (S/N)? :"
					Leer continuar
				FinMientras
				Imprimir "Total de medicos registrados: " cant_med
				Imprimir "Horas totales trabajadas: " t_horas
				Imprimir "Promedio de horas por m�dico: " prom_hora
				Imprimir "M�dicos Generales: " cont_Gene
				Imprimir "Pediatras: " cont_Pedi
				Imprimir "Cirujanos: " cont_Ciru
				Imprimir "Internista: " cont_int
			8:
				Escribir "--- LABORATORIO ---"
				Definir i,num_paci,id,T_pagolab,T_exam,cont_san,cont_ori,cont_azu,cont_emba,T_paci,v_sa,v_or,v_azu,v_em Como Real
				Definir h_cli,resp Como Caracter
				cont_san=0
				cont_ori=0
				cont_azu=0
				cont_emba=0
				T_pagolab=0
				T_exam=0
				T_paci=0
				v_sa=10
				v_or=5
				v_azu=20
				v_em=15
				Escribir "Digita la cantidad de pacientes a ingresar"
				Leer num_paci
				Para i=1 Hasta num_paci Con Paso 1
					Escribir "Digita el numero de identificacion sin puntos: " i
					Leer id
					Escribir "Ingresa el codigo de la historia cl�nica:" i
					Leer h_clinica
					Escribir "Su examen es de Sangre (S/N)"
					leer resp
					Si resp="SI" o RESP="si" o RESP="Si" o RESP="S" o RESP="s"Entonces
						T_paci=T_paci+v_sa
						cont_san=cont_san+1
					FinSi
					Escribir "Su examen es de Orina (S/N)"
					leer resp
					Si resp="SI" o RESP="si" o RESP="Si" o RESP="S" o RESP="s"Entonces
						T_paci=T_paci+v_or
						cont_ori=cont_ori+1
					FinSi
					Escribir "Su examen es de Azucar (S/N)"
					leer resp
					Si resp="SI" o RESP="si" o RESP="Si" o RESP="S" o RESP="s"Entonces
						T_paci=T_paci+v_azu
						cont_azu=cont_azu+1
					FinSi
					Escribir "Su examen es de Embarazo (S/N)"
					leer resp
					Si resp="SI" o RESP="si" o RESP="Si" o RESP="S" o RESP="s"Entonces
						T_paci=T_paci+v_em
						cont_emba=cont_emba+1
					FinSi
					Imprimir "El valor apagar del paciente es: " T_paci
					T_pagolab=T_pagolab+T_paci
					T_exam=cont_san+cont_ori+cont_azu+cont_emba					
				FinPara
				Imprimir "Valor recaudado por todos los examenes es: " T_pagolab
			9:
				Escribir "--- VACUNACION ---"
				Definir nom, gestante,resp Como caracter
				Definir edad,dia_sem,T_vacu,lunes, martes, miercoles, viernes,pago,T_pago Como Entero
				lunes=0
				martes=0
				miercoles=0
				viernes=0
				T_vacu=0
				cont_0_5=0
				cont_6_17=0
				cont_18_59=0
				cont_60_mas=0
				cont_gestantes=0
				pago=50000
				
				Repetir
					Escribir "Ingrese el nombre del afiliado:"
					Leer nom		
					Escribir "Ingrese la edad de ", nom, ":"
					Leer edad		
					Escribir "�Esta en embarazo (S/N)? :"
					Leer gestante
					
					Escribir "Ingrese numero del d�a de la semana:"
					Escribir "1. LUNES"
					Escribir "2. MARTES"
					Escribir "3. MIERCOLES"
					Escribir "4. VIERNES"
					Leer dia_sem
					Escribir "Validar disponibilidad de Vacunaci�n (S/N):"
					Leer resp
					Si gestante="SI" o gestante="Si" o gestante="si" o gestante="S" o gestante="s" Entonces
						Escribir nom, " puede vacunarse hoy por ser gestante."
						T_vacu=T_vacu + 1			
					Sino
						Segun dia_sem Hacer
							Caso 1:
								Si edad >= 0 Y edad <= 5 Entonces
									Imprimir nom, " Puede vacunarse hoy (ni�o de 0 a 5 a�os)."
									lunes=lunes + 1
									T_vacu=T_vacu + 1
								Sino
									Imprimir nom, " NO puede vacunarse hoy. Solo ni�os de 0 a 5 a�os los lunes."
								FinSi
								
							Caso 2:
								Si edad >= 6 Y edad <= 17 Entonces
									Imprimir nom, " Puede vacunarse hoy (ni�o de 6 a 17 a�os)."
									martes= martes + 1
									T_vacu=T_vacu + 1
								Sino
									Imprimir nom, " NO puede vacunarse hoy. Solo ni�os de 6 a 17 a�os los martes."
								FinSi						
								
							Caso 3:
								Si edad >= 18 Y edad <= 59 Entonces
									Imprimir nom, " Puede vacunarse hoy (adulto de 18 a 59 a�os)."
									miercoles=miercoles + 1
									T_vacu=T_vacu + 1
								Sino
									Imprimir nom, " NO puede vacunarse hoy. Solo adultos de 18 a 59 a�os los miercoles."
								FinSi
							Caso 4:
								Si edad >= 60 Entonces
									Imprimir nom, " Puede vacunarse hoy (mayor de 60 a�os)."
									viernes=viernes + 1
									T_vacu=T_vacu + 1
								Sino
									Imprimir nom, " NO puede vacunarse hoy. Solo mayores de 60 los viernes."
								FinSi
								
							De Otro Modo:
								Imprimir "No se registro vacunacion."								
						FinSegun
					FinSi		
					Escribir "�Desea registrar otra persona? (S/N):"
					Leer resp		
				Hasta Que resp="no" o resp="NO" o resp="No" o resp="n" o resp="n"
				T_pago=T_vacu*pago
				Imprimir "Cantidad vacunados 1.lunes: " lunes
				Imprimir "Cantidad vacunados 2. martes: " martes
				Imprimir "Cantidad vacunados  3. mi�rcoles: " miercoles
				Imprimir "Cantidad vacunados 4. viernes: " viernes
				Imprimir "Cantidad Total de Vacuando: " T_vacu
				Imprimir "El total de pago por vacunacion es: " T_pago
		FinSegun
		
		Escribir "presione enter para continuar"
		Esperar Tecla
	Hasta Que OP=10
	Imprimir  "Gracias por venir al HOSPITAL H/H."
FinAlgoritmo
