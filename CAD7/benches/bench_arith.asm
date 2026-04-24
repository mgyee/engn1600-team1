; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; Basic arithmetic smoke test.
;
; Exercises:
;   - MOVI immediate writes
;   - ADD register-register arithmetic
;   - SUB two-cycle arithmetic
;   - STOR memory writes
;   - CMP flag update without register writeback
;
; Expected results:
;   mem[0] = 8
;   mem[1] = 3
;   final Z flag = 0 after comparing 5 and 3
;
; Register map:
;   R0 = address 0
;   R1 = constant 5
;   R2 = running arithmetic result
;   R3 = address 1

MOVI 0, R0      ; R0 points at mem[0]
MOVI 5, R1      ; R1 = 5
MOVI 3, R2      ; R2 = 3
ADD R1, R2      ; R2 = 3 + 5 = 8
STOR R2, R0     ; mem[0] = 8
SUB R1, R2      ; R2 = 8 - 5 = 3
MOVI 1, R3      ; R3 points at mem[1]
STOR R2, R3     ; mem[1] = 3
CMP R1, R2      ; compare R2 - R1, so Z should be clear
NOP             ; drain the simple pipeline
NOP             ; leave flags stable for the testbench
