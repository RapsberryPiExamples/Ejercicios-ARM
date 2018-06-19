/******************************************************************************
  Ejercicio 2: Ejercicio de una suma de números hexadecimales, el primer número es guardado en el
  registros R1 y este le es sumado el número 10, para luego guardar el resultado en el R0.
******************************************************************************/
 
.global _start
   
_start:
	MOV R7, #4	 @ llama syscall para escribir, 4
	MOV R0, #1	 @ llama monitor para imprimir
	MOV R2, #13	 @ imprime la cantidad de elementos del string
	LDR R1 = add_str @ string de la etiqueta add_str
	MOV R1, #0x14	 @ guarda 20 al registro R1
	ADD R0, R!, #0xA @ suma 10 al R1 y guarda en R0
	Bl printf	 @ llamar printf
	SWI 0
	B _exit
   
_exit:  
	MOV R7, #1	 @ terminar syscall
	SWI 0  		 @ ejecuta syscall
 
.data
add_str:
.ascii "La suma hexadecimal es: !\n"
