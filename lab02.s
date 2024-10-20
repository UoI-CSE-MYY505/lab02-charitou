
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1  # The number which we search.
    add s0,zero,zero
prog:
#-----------------------------
# Do not remove the prog label or write code above it
    beq s0,a1,exit_not_found
    slli t0,s0,2
    add t0,t0,a0
    lw t1,0(t0)
    beq t1,a2, done
    j prog
#-----------------------------
exit_not_found:
        addi s0,zero,0
done:
    addi a7, zero, 10 
    ecall
