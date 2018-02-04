.text
mov r0,#456
loop:
     cmp r0,#10
     blt l3
     bgt l1
     l1:
        sub r0,r0,#10
        add r2,r2,#1
        cmp r0,#10
        blt l3
        beq l1
        bgt l1
     l3:
        add r3,r3,r0
        mov r0,r2
        mov r2,#0
        cmp r0,#10
        bgt l1
        beq l1
        blt end
     end:
        add r3,r3,r0
        swi 0x11
.end
             