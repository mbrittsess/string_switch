[section .text]
#line 33 "C:\projects\string_switch\switch.c"
[function $_Case]
$_Case:
sub rsp,40
[allocstack 40]
[endprolog ..?X$_Case]
mov qword [rsp+(48)],rcx
mov qword [rsp+(56)],rdx
mov qword [rsp+(64)],r8
#line 34 "C:\projects\string_switch\switch.c"
#line 35 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
movzx edx,byte [rax+(48)]
cmp edx,0
jne @20
cmp qword [rax+(40)],0
je @20
mov rcx,qword [rax+(80)]
mov rdx,qword [rsp+(56)]
call $strcmp
cmp eax,0
jne @20
#line 38 "C:\projects\string_switch\switch.c"
#line 39 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov byte [rax+(48)],1
#line 40 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov rdx,qword [rsp+(64)]
mov qword [rax+(56)],rdx
#line 41 "C:\projects\string_switch\switch.c"
@20:
#line 42 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
add rsp,40
ret
..?X$_Case:
[section .text]
#line 45 "C:\projects\string_switch\switch.c"
[function $_iCase]
$_iCase:
sub rsp,40
[allocstack 40]
[endprolog ..?X$_iCase]
mov qword [rsp+(48)],rcx
mov qword [rsp+(56)],rdx
mov qword [rsp+(64)],r8
#line 46 "C:\projects\string_switch\switch.c"
#line 47 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
movzx edx,byte [rax+(48)]
cmp edx,0
jne @31
cmp qword [rax+(40)],0
je @31
mov rcx,qword [rax+(80)]
mov rdx,qword [rsp+(56)]
call $_stricmp
cmp eax,0
jne @31
#line 50 "C:\projects\string_switch\switch.c"
#line 51 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov byte [rax+(48)],1
#line 52 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov rdx,qword [rsp+(64)]
mov qword [rax+(56)],rdx
#line 53 "C:\projects\string_switch\switch.c"
@31:
#line 54 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
add rsp,40
ret
..?X$_iCase:
[section .text]
#line 57 "C:\projects\string_switch\switch.c"
[function $_Default]
$_Default:
mov qword [rsp+(8)],rcx
mov qword [rsp+(16)],rdx
#line 58 "C:\projects\string_switch\switch.c"
#line 59 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
cmp qword [rax+(40)],0
je @42
#line 60 "C:\projects\string_switch\switch.c"
#line 61 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
movzx eax,byte [rax+(64)]
cmp eax,0
je @43
#line 62 "C:\projects\string_switch\switch.c"
#line 63 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
mov rax,qword [rax+(40)]
lea rdx,[(@44) wrt rip]
mov qword [rax],rdx
#line 64 "C:\projects\string_switch\switch.c"
jmp @42
@43:
#line 66 "C:\projects\string_switch\switch.c"
#line 67 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
mov byte [rax+(64)],1
#line 68 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
mov rdx,qword [rsp+(16)]
mov qword [rax+(72)],rdx
#line 69 "C:\projects\string_switch\switch.c"
#line 70 "C:\projects\string_switch\switch.c"
@42:
#line 71 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
ret
ret
..?X$_Default:
[section .text]
#line 74 "C:\projects\string_switch\switch.c"
[function $_FoundYet]
$_FoundYet:
mov qword [rsp+(8)],rcx
mov qword [rsp+(16)],rdx
#line 75 "C:\projects\string_switch\switch.c"
#line 76 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
cmp qword [rax+(40)],0
je @53
movzx eax,byte [rax+(48)]
cmp eax,0
je @53
#line 78 "C:\projects\string_switch\switch.c"
#line 79 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(16)]
mov byte [rax],1
#line 80 "C:\projects\string_switch\switch.c"
jmp @55
@53:
#line 82 "C:\projects\string_switch\switch.c"
#line 83 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(16)]
mov byte [rax],0
#line 84 "C:\projects\string_switch\switch.c"
@55:
#line 85 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(8)]
ret
ret
..?X$_FoundYet:
[section .text]
#line 88 "C:\projects\string_switch\switch.c"
[function $_End]
$_End:
sub rsp,40
[allocstack 40]
[endprolog ..?X$_End]
mov qword [rsp+(48)],rcx
#line 89 "C:\projects\string_switch\switch.c"
#line 90 "C:\projects\string_switch\switch.c"
mov qword [rsp+(32)],0
#line 92 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
cmp qword [rax+(40)],0
je @63
#line 93 "C:\projects\string_switch\switch.c"
#line 94 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
movzx eax,byte [rax+(48)]
cmp eax,0
je @64
#line 95 "C:\projects\string_switch\switch.c"
#line 96 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov rax,qword [rax+(56)]
mov qword [rsp+(32)],rax
#line 97 "C:\projects\string_switch\switch.c"
jmp @63
@64:
#line 98 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
movzx eax,byte [rax+(64)]
cmp eax,0
je @63
#line 99 "C:\projects\string_switch\switch.c"
#line 100 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov rax,qword [rax+(72)]
mov qword [rsp+(32)],rax
#line 101 "C:\projects\string_switch\switch.c"
#line 102 "C:\projects\string_switch\switch.c"
@63:
#line 104 "C:\projects\string_switch\switch.c"
mov rcx,qword [rsp+(48)]
call $free
#line 105 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(32)]
add rsp,40
ret
..?X$_End:
[section .rdata]
[alignb 8]
@75:
dq 
[global ]
[alignb 8]
:
dq $_Case
dq $_iCase
dq $_Default
dq $_FoundYet
dq $_End
dd 0x0
dd 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
dd 0x0
dd 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
db 0x0
dd 0x0
dd 0x0
dd 0x0
dd 0x0
[global $SwitchString]
[section .text]
#line 108 "C:\projects\string_switch\switch.c"
[function $SwitchString]
$SwitchString:
sub rsp,40
[allocstack 40]
[endprolog ..?X$SwitchString]
mov qword [rsp+(48)],rcx
mov qword [rsp+(56)],rdx
#line 109 "C:\projects\string_switch\switch.c"
#line 128 "C:\projects\string_switch\switch.c"
mov rcx,88
call $malloc
mov qword [rsp+(32)],rax
#line 129 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(48)]
mov rdx,qword [rsp+(32)]
mov qword [rax],rdx
#line 131 "C:\projects\string_switch\switch.c"
cmp qword [rsp+(32)],0
je @106
#line 132 "C:\projects\string_switch\switch.c"
#line 133 "C:\projects\string_switch\switch.c"
mov r8,88
mov rdx,qword [(@75) wrt rip]
mov rcx,qword [rsp+(32)]
call $memcpy
#line 134 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(32)]
mov rdx,qword [rsp+(56)]
mov qword [rax+(80)],rdx
#line 135 "C:\projects\string_switch\switch.c"
@106:
#line 137 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(32)]
add rsp,40
ret
..?X$SwitchString:
[global $main]
[section .text]
#line 140 "C:\projects\string_switch\switch.c"
[function $main]
$main:
sub rsp,72
[allocstack 72]
[endprolog ..?X$main]
mov dword [rsp+(80)],ecx
mov qword [rsp+(88)],rdx
#line 141 "C:\projects\string_switch\switch.c"
#line 142 "C:\projects\string_switch\switch.c"
cmp dword [rsp+(80)],1
je @112
#line 143 "C:\projects\string_switch\switch.c"
#line 144 "C:\projects\string_switch\switch.c"
lea rcx,[(@113) wrt rip]
call $puts
#line 145 "C:\projects\string_switch\switch.c"
mov eax,1
jmp @111
@112:
#line 148 "C:\projects\string_switch\switch.c"
#line 149 "C:\projects\string_switch\switch.c"
mov qword [rsp+(56)],0
#line 150 "C:\projects\string_switch\switch.c"
mov byte [rsp+(55)],0
#line 151 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(88)]
mov rdx,qword [rax+(8)]
lea rcx,[rsp+(56)]
call $SwitchString
mov r8,5
lea rdx,[(@115) wrt rip]
mov rcx,qword [rsp+(56)]
call qword [rax]
mov r8,16
lea rdx,[(@116) wrt rip]
mov rcx,qword [rsp+(56)]
call qword [rax]
mov r8,21
lea rdx,[(@117) wrt rip]
mov rcx,qword [rsp+(56)]
call qword [rax]
mov r8,80
lea rdx,[(@118) wrt rip]
mov rcx,qword [rsp+(56)]
call qword [rax]
lea rdx,[rsp+(55)]
mov rcx,qword [rsp+(56)]
call qword [rax+(24)]
mov rdx,153
mov rcx,qword [rsp+(56)]
call qword [rax+(16)]
mov rcx,qword [rsp+(56)]
call qword [rax+(32)]
mov qword [rsp+(40)],rax
#line 159 "C:\projects\string_switch\switch.c"
mov rax,qword [rsp+(40)]
cqo
xor rax,rdx
sub rax,rdx
mov qword [rsp+(32)],rax
#line 161 "C:\projects\string_switch\switch.c"
lea rcx,[(@129) wrt rip]
call $puts
#line 162 "C:\projects\string_switch\switch.c"
movzx eax,byte [rsp+(55)]
cmp eax,0
je @130
#line 163 "C:\projects\string_switch\switch.c"
#line 164 "C:\projects\string_switch\switch.c"
mov rdx,qword [rsp+(32)]
lea rcx,[(@131) wrt rip]
call $printf
#line 165 "C:\projects\string_switch\switch.c"
jmp @132
@130:
#line 167 "C:\projects\string_switch\switch.c"
#line 168 "C:\projects\string_switch\switch.c"
mov rdx,qword [rsp+(32)]
lea rcx,[(@133) wrt rip]
call $printf
#line 169 "C:\projects\string_switch\switch.c"
@132:
#line 171 "C:\projects\string_switch\switch.c"
mov eax,0
@111:
add rsp,72
ret
..?X$main:
[extern $_stricmp]
[extern $strcmp]
[extern $memcpy]
[extern $malloc]
[extern $free]
[extern $puts]
[extern $printf]
[section .rdata]
[alignb 1]
@133:
db 'You entered the name of someone we don',39,'t have, the value is: 0xllX.',10,0
[alignb 1]
@131:
db 'You entered the name of someone we have, the value is: 0xllX.',10,0
[alignb 1]
@129:
db 'We have Alice (0x05), Bob (0x10), Charlie (0x15), and Eve (0x50).',10,'Everyone else is 0x99.',0
[alignb 1]
@118:
db 'Eve',0
[alignb 1]
@117:
db 'Charlie',0
[alignb 1]
@116:
db 'Bob',0
[alignb 1]
@115:
db 'Alice',0
[alignb 1]
@113:
db 'Please enter exactly one name',0
[alignb 1]
@44:
db 'Default value given multiple times',0
[section .drectve]
db " -defaultlib:crtmt64"
db " -defaultlib:kernel32"
