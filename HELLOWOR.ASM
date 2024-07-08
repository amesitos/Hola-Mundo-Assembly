;model small 
;son comentarios

.model small ;define el tipo de modelo; corto
.data ;define las variables que se ocuparan

mensaje db 'Este es mi Hola mundo!$' ;mensaje

.code ;bloque de codigo
inicio: ;se define un comienzo del cuerpo del programa

mov ax,@data ;mover al registro dx los datos a usar
mov ds,ax ;registros de derecha a izquierda

mov ah,09h ;en ah cargan las funciones y en 09 permite desplegar un mensaje en pantalla
mov dx,offset mensaje ;mover al registro dx el contenido del mensaje
int 21h ;interrupcion

;terminar el programa

mov ax, 4c00H
int 21h ;interrupcion
.stack ;segmento de pila

end inicio ;termina el segmento definido como inicio
