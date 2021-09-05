org 100h 
            
     ;Arithmetic calculation:

mov ax, 12 ;Vlera 12 ruhet ne regjistrin ax
    mov bx, 3  ;Vlera 3 ruhet ne regjistrin bx
    
    add ax,bx ; Mblidhen ax me bx dhe rezultati vendoset ne ax
    mov bx, 2 
    mul bx ; bx shumezohet me ax, i cili mirret ne menyre implicite
    
    ;rezulati vendoset ne ax
    
    mov bx, 3
    div bx ; regjistri bx pjestohet me ax ne menyre implicite
    
    
    ;Printimi i nje stringu me interrupts 
     
     mov ah, 0eh
     mov al, 'P'
     int 10h
     mov al, 89h
     int 10h
     mov al, 'r'
     int 10h
     mov al, 's'
     int 10h
     mov al, 'h'
     int 10h
     mov al, 89h
     int 10h
     mov al, 'n'
     int 10h
     mov al, 'd'
     int 10h
     mov al, 'e'
     int 10h
     mov al, 't'
     int 10h
     mov al, 'j'
     int 10h
     mov al, 'e'
     int 10h
     
     
    mov dl, 10   ;10 ne ASCII - new line
    mov ah, 02h  ;
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
     
     ;Ose nje tjeter menyre:
     
     jmp fillimi
     
     mesazhi: db "Pershendetje", 0Dh, 0Ah, 24h
     
     fillimi: mov dx, mesazhi
              mov ah, 09h      ; 09h-funksion per shtypje
              int 21h  ; shtyp:
              
              mov ah, 0
              int 16h 
              
        ; String manipulation
    
 
  ;kopjojme nje String prej nje lokacioni te memories ne nje tjeter    
   mov ax, 0000h
   mov ds, ax     ;ax eshte 0000 kshtu qe edhe ds edhe es marrin ate vlere
   mov es, ax
   mov si, 1000h   ;bejme set source index si 1000
   mov di,2200h    ;dhe destination index ne 2200
   mov cx, 06h     ; numri 6 tregon gjatsine e Stringut
   rep movsb   ; bejme move string
   
  
ret