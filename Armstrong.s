.text
mov r0,#153
mov r5,r0
mov r1,#1
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
        mul r1,r0,r1
        mul r1,r0,r1
        mul r1,r0,r1
        add r3,r3,r1
        mov r0,r2
        mov r2,#0
        mov r1,#1
        cmp r0,#10
        bgt l1
        beq l1
        blt end
     end:
         mul r1,r0,r1
         mul r1,r0,r1
         mul r1,r0,r1
         add r3,r3,r1
         cmp r3,r5
         beq l4
         bne l5
     l4:
         mov r6,#1
         swi 0x11
     l5:
         mov r6,#0
         swi 0x11
.end
             