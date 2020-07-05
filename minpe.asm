; Disassembly of file: minpe.exe
; Sun Jul  5 13:25:52 2020
; Type: COFF32
; Syntax: MASM/ML
; Instruction set: 80386

.386
option dotname
.model flat

public Entry_point

extern __imp__CreateFileW@28: near                      ; KERNEL32.dll


_text   SEGMENT DWORD PUBLIC 'CODE'                     ; section number 1

Entry_point PROC NEAR
        push    ebp                                     ; 00401000 _ 55
        mov     ebp, esp                                ; 00401001 _ 8B. EC
        push    ecx                                     ; 00401003 _ 51
        push    0                                       ; 00401004 _ 6A, 00
        push    0                                       ; 00401006 _ 6A, 00
        push    3                                       ; 00401008 _ 6A, 03
        push    0                                       ; 0040100A _ 6A, 00
        push    0                                       ; 0040100C _ 6A, 00
        push    -2147483648                             ; 0040100E _ 68, 80000000
        push    offset ?_003                            ; 00401013 _ 68, 00402010(d)
        call    dword ptr [imp_CreateFileW]             ; 00401018 _ FF. 15, 00402000(d)
        mov     dword ptr [ebp-4H], eax                 ; 0040101E _ 89. 45, FC
        cmp     dword ptr [ebp-4H], -1                  ; 00401021 _ 83. 7D, FC, FF
        jnz     ?_001                                   ; 00401025 _ 75, 07
        or      eax, 0FFFFFFFFH                         ; 00401027 _ 83. C8, FF
        jmp     ?_002                                   ; 0040102A _ EB, 04

; Note: No jump seems to point here
        jmp     ?_002                                   ; 0040102C _ EB, 02

?_001:  xor     eax, eax                                ; 0040102E _ 33. C0
?_002:  mov     esp, ebp                                ; 00401030 _ 8B. E5
        pop     ebp                                     ; 00401032 _ 5D
        ret                                             ; 00401033 _ C3
Entry_point ENDP

        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401034 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040103C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401044 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040104C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401054 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040105C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401064 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040106C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401074 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040107C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401084 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040108C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401094 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040109C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010A4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010AC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010B4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010BC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010C4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010CC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010D4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010DC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010E4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010EC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010F4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004010FC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401104 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040110C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401114 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040111C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401124 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040112C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401134 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040113C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401144 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040114C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401154 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040115C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401164 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040116C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401174 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040117C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401184 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040118C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00401194 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040119C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011A4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011AC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011B4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011BC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011C4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011CC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011D4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011DC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011E4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011EC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004011F4 _ ........
        db 00H, 00H, 00H, 00H                           ; 004011FC _ ....

_text   ENDS

.rdata  SEGMENT DWORD PUBLIC 'CONST'                     ; section number 2

Import_address_table label dword
imp_CreateFileW label dword                             ; import from KERNEL32.dll
        dd 0000216CH, 00000000H                         ; 00402000 _ 8556 0 
        dd 00000000H, 00000000H                         ; 00402008 _ 0 0 

?_003   label byte
        db 43H, 00H, 3AH, 00H, 5CH, 00H, 57H, 00H       ; 00402010 _ C.:.\.W.
        db 69H, 00H, 6EH, 00H, 64H, 00H, 6FH, 00H       ; 00402018 _ i.n.d.o.
        db 77H, 00H, 73H, 00H, 5CH, 00H, 53H, 00H       ; 00402020 _ w.s.\.S.
        db 79H, 00H, 73H, 00H, 74H, 00H, 65H, 00H       ; 00402028 _ y.s.t.e.
        db 6DH, 00H, 33H, 00H, 32H, 00H, 5CH, 00H       ; 00402030 _ m.3.2.\.
        db 4BH, 00H, 65H, 00H, 72H, 00H, 6EH, 00H       ; 00402038 _ K.e.r.n.
        db 65H, 00H, 6CH, 00H, 42H, 00H, 61H, 00H       ; 00402040 _ e.l.B.a.
        db 73H, 00H, 65H, 00H, 2EH, 00H, 64H, 00H       ; 00402048 _ s.e...d.
        db 6CH, 00H, 6CH, 00H, 00H, 00H, 00H, 00H       ; 00402050 _ l.l.....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402058 _ ........

Debug_table label dword
        db 00H, 00H, 00H, 00H, 22H, 1BH, 02H, 5FH       ; 00402060 _ ....".._
        db 00H, 00H, 00H, 00H, 0DH, 00H, 00H, 00H       ; 00402068 _ ........
        db 0A4H, 00H, 00H, 00H, 98H, 20H, 00H, 00H      ; 00402070 _ ..... ..
        db 98H, 06H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402078 _ ........
        db 22H, 1BH, 02H, 5FH, 00H, 00H, 00H, 00H       ; 00402080 _ ".._....
        db 0EH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402088 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402090 _ ........
        db 47H, 43H, 54H, 4CH, 00H, 10H, 00H, 00H       ; 00402098 _ GCTL....
        db 34H, 00H, 00H, 00H, 2EH, 74H, 65H, 78H       ; 004020A0 _ 4....tex
        db 74H, 24H, 6DH, 6EH, 00H, 00H, 00H, 00H       ; 004020A8 _ t$mn....
        db 00H, 20H, 00H, 00H, 10H, 00H, 00H, 00H       ; 004020B0 _ . ......
        db 2EH, 69H, 64H, 61H, 74H, 61H, 24H, 35H       ; 004020B8 _ .idata$5
        db 00H, 00H, 00H, 00H, 10H, 20H, 00H, 00H       ; 004020C0 _ ..... ..
        db 88H, 00H, 00H, 00H, 2EH, 72H, 64H, 61H       ; 004020C8 _ .....rda
        db 74H, 61H, 00H, 00H, 98H, 20H, 00H, 00H       ; 004020D0 _ ta... ..
        db 0A4H, 00H, 00H, 00H, 2EH, 72H, 64H, 61H      ; 004020D8 _ .....rda
        db 74H, 61H, 24H, 7AH, 7AH, 7AH, 64H, 62H       ; 004020E0 _ ta$zzzdb
        db 67H, 00H, 00H, 00H, 3CH, 21H, 00H, 00H       ; 004020E8 _ g...<!..
        db 14H, 00H, 00H, 00H, 2EH, 69H, 64H, 61H       ; 004020F0 _ .....ida
        db 74H, 61H, 24H, 32H, 00H, 00H, 00H, 00H       ; 004020F8 _ ta$2....
        db 50H, 21H, 00H, 00H, 14H, 00H, 00H, 00H       ; 00402100 _ P!......
        db 2EH, 69H, 64H, 61H, 74H, 61H, 24H, 33H       ; 00402108 _ .idata$3
        db 00H, 00H, 00H, 00H, 64H, 21H, 00H, 00H       ; 00402110 _ ....d!..
        db 08H, 00H, 00H, 00H, 2EH, 69H, 64H, 61H       ; 00402118 _ .....ida
        db 74H, 61H, 24H, 34H, 00H, 00H, 00H, 00H       ; 00402120 _ ta$4....
        db 6CH, 21H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 00402128 _ l!......
        db 2EH, 69H, 64H, 61H, 74H, 61H, 24H, 36H       ; 00402130 _ .idata$6
        db 00H, 00H, 00H, 00H                           ; 00402138 _ ....

Import_table label dword
        db 64H, 21H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040213C _ d!......
        db 00H, 00H, 00H, 00H, 7AH, 21H, 00H, 00H       ; 00402144 _ ....z!..
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040214C _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402154 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040215C _ ........
        db 6CH, 21H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402164 _ l!......

Import_name_table label byte
        db 0CBH, 00H, 43H, 72H, 65H, 61H, 74H, 65H      ; 0040216C _ ..Create
        db 46H, 69H, 6CH, 65H, 57H, 00H, 4BH, 45H       ; 00402174 _ FileW.KE
        db 52H, 4EH, 45H, 4CH, 33H, 32H, 2EH, 64H       ; 0040217C _ RNEL32.d
        db 6CH, 6CH, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402184 _ ll......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040218C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00402194 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0040219C _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021A4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021AC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021B4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021BC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021C4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021CC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021D4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021DC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021E4 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021EC _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004021F4 _ ........
        db 00H, 00H, 00H, 00H                           ; 004021FC _ ....

.rdata  ENDS

.reloc  SEGMENT DWORD PUBLIC 'CONST'                     ; section number 3

Base_relocation_table label dword
        db 00H, 10H, 00H, 00H, 0CH, 00H, 00H, 00H       ; 00403000 _ ........
        db 14H, 30H, 1AH, 30H, 00H, 00H, 00H, 00H       ; 00403008 _ .0.0....
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403018 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403020 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403038 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403040 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403060 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403068 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403070 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403078 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403080 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403088 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403090 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403098 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030A0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030B8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030C0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004030F8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403100 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403108 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403110 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403118 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403120 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403128 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403130 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403138 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403140 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403158 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403160 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403168 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403170 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403178 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403180 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403188 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403190 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00403198 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031A0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031B8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031C0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031C8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031D0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031E0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031E8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 004031F8 _ ........

.reloc  ENDS

END