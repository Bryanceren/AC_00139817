
;;;;;;;;;;;;;;;;;;EJERCICIO1;;;;;;;;;;;;;;;;;;

    org    100h
    
;carnet 00139817
section	.text
	mov	cx, 0000h
    mov bx, 0000h

	mov	ax, 3d

	add	ax, 9d

	add	ax, 8d

	add	ax, 1d

	add	ax, 7d

	mov	bx, 5d

	div	bx

	mov	di, 0d
	mov	cx, [len]

write	mov	bl, [comnt+di]
	mov	[di+200h], bl
	inc	di

	loop	write


;;;;;;;;;;;;;;;;;;EJERCICIO2;;;;;;;;;;;;;;;;;;

mov	    cx, 0000h
	mov	    di, 0d
	mov	    bx, 2d
	mov	    ax, 2d
    mov     cx, 11d

lupita2:    mul	    bx
    
	
    cmp     ax, 0100h
    jbe     cond

	inc	    di
cond:       mov     [di+210h], ax
    inc     di

	loop	lupita2


;;;;;;;;;;;;;;;;;;EJERCICIO3;;;;;;;;;;;;;;;;;;


    mov     ax, 0000h 
    mov     bx, 0000h
    mov     cx, 0000h
    mov     ax, 0d
    mov     di, 0d
    mov     cx, 0015d
    mov     dx, 1d


    lupita:mov    [di + 220h], ax
    
    inc     di
    
    mov     bx,ax
    add     ax, dx
    mov     dx, bx

    loop    lupita


    
    int 20h

    ;;;;;;;;;;;;;;;;PARA EL PRIMERO;;;;;;;;;;;;;;;
    section .data
    comnt      db      "En el segundo"
    len         equ     $-comnt
