; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; Control-flow smoke test.
;
; Exercises:
;   - BUC unconditional PC-relative branch
;   - JUC unconditional register jump
;   - taken-control-flow NOP squashing
;
; Expected results:
;   mem[0] = 2, because the first branch skips the 170 store
;   mem[1] = 4, because the register jump skips the 85 store
;
; Register map:
;   R0 = address 0
;   R1 = value being stored
;   R2 = absolute jump target
;   R3 = address 1

MOVI 0, R0      ; R0 points at mem[0]
MOVI 1, R1      ; seed value that should not reach memory
BUC 2           ; skip over the next MOVI/STOR pair
MOVI 170, R1    ; skipped if branch target is correct
STOR R1, R0     ; skipped if branch target is correct
MOVI 2, R1      ; value that should be stored at mem[0]
STOR R1, R0     ; mem[0] = 2
MOVI 11, R2     ; absolute target address for JUC
JUC R2          ; jump to the MOVI 4 block
MOVI 85, R1     ; skipped if register jump target is correct
STOR R1, R0     ; skipped if register jump target is correct
MOVI 4, R1      ; value that should be stored at mem[1]
MOVI 1, R3      ; R3 points at mem[1]
STOR R1, R3     ; mem[1] = 4
