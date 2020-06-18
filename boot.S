
    .equ VTOR, 0xe000ed08
    
    .syntax unified

    .text
    .globl _start
_start:
    ldr r0, =_vtor
    ldr sp, [r0]

    ldr r1, =VTOR
    str r0, [r1]


    bl systick_config


    bl led3_config

    bl led3_on

    b .

