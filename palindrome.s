.text
mov r0,#111
mov r1,r0
cmp r0,#10
mov r6,#10
mov r4,#0
bgt l1
blt l2
l1:
    sub r0,r0,#10
    add r3,r3,#1
    cmp r0,#10
    bgt l1
    beq l1
    blt l3
l2:
    mov r4,r0
    swi 0x11
l3:
    mul r4,r6,r4
    add r4,r4,r0
    mov r0,r3
    mov r3,#0
    cmp r0,#10
    bgt l1
    blt end
end:
    mul r4,r6,r4
    add r4,r4,r0
    cmp r4,r1
    beq l4
    bne l5
l4:
    mov r5,#1
    swi 0x11
l5:
   mov r5,#0
   swi 0x11
.end
             