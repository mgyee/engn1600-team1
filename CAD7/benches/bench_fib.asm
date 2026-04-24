; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; Compute F(10) iteratively.
; Result: mem[0] = 55.
;
; This is a compact loop-oriented program for branch and arithmetic coverage.
; The loop invariant is:
;   R2 = F(i)
;   R3 = F(i + 1)
;   R4 = iterations remaining
;
; Register map:
;   R0 = result address
;   R2 = a, the older Fibonacci value
;   R3 = b, the newer Fibonacci value
;   R4 = loop counter
;   R5 = temporary copy of b

MOVI 0, R0      ; result address
MOVI 0, R2      ; a = F(0)
MOVI 1, R3      ; b = F(1)
MOVI 10, R4     ; loop count

fib_loop:
CMPI 0, R4      ; stop when no iterations remain
BEQ fib_done
MOV R3, R5      ; tmp = b
ADD R2, R3      ; b = a + b
MOV R5, R2      ; a = old b
SUBI 1, R4      ; consume one Fibonacci step
BNE fib_loop    ; keep going until R4 reaches zero

fib_done:
STOR R2, R0     ; mem[0] = F(10)

halt:
BUC halt        ; stable endpoint for long simulations
