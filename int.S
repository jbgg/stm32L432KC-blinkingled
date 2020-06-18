
    .text

    .globl gen_int
gen_int:
    b .

    .globl svcall_int
svcall_int:
    bx lr

    .globl systick_int
systick_int:
    b .

