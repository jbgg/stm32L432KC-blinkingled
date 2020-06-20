
    .equ VTOR, 0xe000ed08
    
    .text
    .syntax unified

    .globl _start
_start:
    ldr r0, =_vtable
    ldr sp, [r0]

    ldr r1, =VTOR
    str r0, [r1]

    bl clock_config

    bl systick_config

    bl led3_config

    bl jmpd2_config


1:

    bl jmpd2_state
    tst r0, #1
    bne 1b
    


1:

    ldr r0, =1000
    bl delay
    bl led3_on

    ldr r0, =1000
    bl delay
    bl led3_off

    b 1b
    

1:
    wfi
    b 1b

