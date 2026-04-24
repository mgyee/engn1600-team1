; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; Memory, shift, and link-register smoke test.
;
; Exercises:
;   - STOR followed by LOAD
;   - LSHI left shift by one
;   - JAL storing the return/link PC
;   - taken JAL squashing the fall-through overwrite
;
; Expected results:
;   mem[0] = 16, from loading 8 and shifting left once
;   mem[1] = 9, the JAL link address
;
; Register map:
;   R0 = address 0
;   R1 = source value 8
;   R2 = loaded and shifted value
;   R3 = address 1
;   R4 = subroutine target address
;   R5 = JAL link register

MOVI 0, R0      ; R0 points at mem[0]
MOVI 1, R3      ; R3 points at mem[1]
MOVI 8, R1      ; source data
STOR R1, R3     ; mem[1] = 8
LOAD R2, R3     ; R2 = mem[1]
LSHI 1, R2      ; R2 = 8 << 1 = 16
STOR R2, R0     ; mem[0] = 16
MOVI 12, R4     ; target address for JAL
JAL R5, R4      ; jump to target and write link address into R5
MOVI 238, R2    ; skipped if JAL control transfer works
STOR R2, R0     ; skipped; would corrupt mem[0]
NOP             ; landing pad before the target store
STOR R5, R3     ; mem[1] = link address
