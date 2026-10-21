Algoritmo sistema_facturacion
	//Eduardo gutierrez martinez
	//24/09/26
	Definir precio, descuento, subtotal,  total, suma_precios Como Real
	Definir cantidad_articulos, i, j, categoria_cliente Como Entero
	precio = 0
	descuento=0
	subtotal=0
	total=0
	cantidad_articulos=0
	categoria_cliente=0
	para i=0 hasta 4 con paso 1 hacer
		suma_precios=0
		escribir "tipos de cliente:"
		Escribir "1:publico en general, 2:cliente frecuente,3:mayorista"
		Escribir "ingresa tu tipo de cliente :"
		Leer categoria_cliente
		si categoria_client>4 o categoria_client<1 Entonces
			escribir " categoria no existente"
		FinSi
		segun categoria_cliente hacer 
			1: escribir " bienvenido cliente general"
				Escribir "¿cuantos productos llevas?"
				leer cantidad_articulos
				Para j =0 hasta cantidad_articulos-1 hacer
					escribir"ingresa el precio del articulo", j+1
					leer precio
					suma_precios =suma_precios+precio
					
				FinPara
				si cantidad_articulos>10 Entonces
					escribir "tienes descuento del 5%"
					
					descuento= suma_precios*.05
				SiNo
					escribir "no hay descuento"
					subtotal=suma_precios-descuento
					total=suma_precios
				FinSi
			2: escribir "bienvenido cliente frewcuente"
				Escribir "¿cuantos productos llevas?"
				leer cantidad_articulos
				Para j =0 hasta cantidad_articulos-1 hacer
					escribir"ingresa el precio del articulo", j+1
					leer precio
					suma_precios =suma_precios+precio
					
				FinPara
				si cantidad_articulos>10 Entonces
					escribir "tienes descuento del 15%"
					
					descuento= suma_precios*.15
				SiNo
					escribir "tienes descuento de 10%"
					descuento= suma_precios*.10
					subtotal=suma_precios-descuento
					total=suma_precios
				FinSi
				3:escribir "bienvenido cliente mayorista"
					Escribir "¿cuantos productos llevas?"
					leer cantidad_articulos
					Para j =0 hasta cantidad_articulos-1 hacer
						escribir"ingresa el precio del articulo", j+1
						leer precio
						suma_precios =suma_precios+precio
						descuento= suma_precios*20
						total= suma_precios-descuento
					FinPara
		escribir "tu tipo de cliente es" categoria_cliente
		Escribir "el totalde tu compra fue "  suma_precios
		Escribir " el total a pagar es" , total
		fin segun
	FinPara
FinAlgoritmo
