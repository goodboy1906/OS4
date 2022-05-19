extern  _printDec
extern  _println
        
        section .data
        
a       dd      0
b       dd      2
c       dd      3
iter    dd      100000000
i       dd      0

        section .text
        global  _start
_start: 

        mov     dword[i], 0

for:    mov     eax, dword[b]
        add     eax, eax
        add     eax, dword[c]
        sub     eax, dword[i]
        add     dword[a], eax

        inc     dword[i]
        mov     eax, dword[iter]
        cmp     dword[i], eax
        jl      for
endfor:
        mov     eax, dword[a]
        call    _printDec
        call    _println

;;; exit
        mov     eax, 1
        mov     ebx, 0
        int     0x80
