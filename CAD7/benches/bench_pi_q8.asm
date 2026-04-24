; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; Approximate pi in Q8 fixed point using 64 Leibniz terms:
;   pi ~= sum((-1)^k * (4 * 256) / (2*k + 1)), k = 0..63
; Division is done by repeated subtraction.
; Result: mem[0] = 799, representing 799 / 256 = 3.12109375.
;
; Q8 means the low 8 bits are fractional. The numerator for each term is
; therefore 4 * 256 = 1024. Since this ISA has no divide instruction, each
; term computes floor(1024 / denominator) with a repeated-subtraction loop.
;
; Register map:
;   R0  = result address
;   R1  = remaining number of terms
;   R2  = current odd denominator, 1, 3, 5, ...
;   R3  = signed fixed-point accumulator
;   R4  = division remainder
;   R5  = division quotient for the current term
;   R6  = sign bit, 0 means add and 1 means subtract
;   R11 = constant numerator, 1024

MOVI 0, R0      ; result address
MOVI 64, R1     ; terms remaining
MOVI 1, R2      ; denominator
MOVI 0, R3      ; accumulator
MOVI 0, R6      ; sign: 0 add, 1 subtract
LUI 4, R11      ; numerator = 1024

pi_outer:
MOV R11, R4     ; remainder = numerator
MOVI 0, R5      ; quotient = 0

pi_div:
CMP R2, R4      ; compare remainder against denominator
BLT pi_term_done ; if remainder < denominator, quotient is complete
SUB R2, R4      ; remainder -= denominator
ADDI 1, R5      ; quotient += 1
BUC pi_div      ; repeat until the remainder is too small

pi_term_done:
CMPI 0, R6      ; alternate signs in the Leibniz series
BEQ pi_add
SUB R5, R3      ; odd terms subtract from accumulator
BUC pi_after_acc

pi_add:
ADD R5, R3      ; even terms add to accumulator

pi_after_acc:
XORI 1, R6      ; flip add/subtract sign
ADDI 2, R2      ; advance to the next odd denominator
SUBI 1, R1      ; consume one term
BNE pi_outer
STOR R3, R0     ; mem[0] = fixed-point pi approximation

halt:
BUC halt        ; stable endpoint for long simulations
