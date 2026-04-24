; ENGN1600 Baseline RISC Processor
; Anhang Li (anhangli@umich.edu)
; -----

; HP Museum calculator benchmark style N-Queens search.
;
; Reference:
;   https://www.hpmuseum.org/cgi-bin/articles.cgi?read=700
;
; The benchmark program in the article calls QUEEN with N=8. It keeps an
; array A[1..N], where A[x] is the column selected for row x. The search
; starts each new row at column N, walks downward on conflicts, and
; backtracks when a row reaches column 0.
;
; Unlike the previous 4-queens benchmark, this does not count all solutions.
; It stops at the first full 8-queens placement. The benchmark counter S is
; incremented each time the program tries a candidate A[x] value.
;
; Expected results:
;   mem[0]  = 384      ; benchmark counter S
;   mem[10] = 8        ; A[1]
;   mem[11] = 3        ; A[2]
;   mem[12] = 1        ; A[3]
;   mem[13] = 6        ; A[4]
;   mem[14] = 2        ; A[5]
;   mem[15] = 5        ; A[6]
;   mem[16] = 7        ; A[7]
;   mem[17] = 4        ; A[8]
;
; Register map:
;   R0 = result address 0
;   R1 = N, fixed at 8
;   R2 = S, benchmark counter
;   R3 = X, current row
;   R4 = Y, previous row being checked
;   R5 = A[X], candidate column
;   R6 = A[Y], previous-row column
;   R7 = T, column difference A[X] - A[Y], then abs(T)
;   R8 = scratch, row distance X - Y or temporary negation
;   R9 = output pointer for copying the final board to mem[10..17]

MOVI 0, R0      ; result address
MOVI 8, R1      ; N = 8, matching the HP benchmark
MOVI 0, R2      ; S = 0 candidate tries
MOVI 0, R3      ; X = 0 rows placed so far

row_start:
CMP R1, R3      ; if X == N, a full board has been found
BEQ done
ADDI 1, R3      ; X++
MOV R1, R5      ; A[X] = N, search columns from high to low
STOR R5, R3

try_candidate:
ADDI 1, R2      ; S++, one more candidate A[X] is being tested
MOV R3, R4      ; Y = X

check_previous:
SUBI 1, R4      ; Y--
CMPI 0, R4      ; no previous rows left means this row is valid
BEQ row_start
LOAD R5, R3     ; R5 = A[X]
LOAD R6, R4     ; R6 = A[Y]
MOV R5, R7      ; T = A[X] - A[Y]
SUB R6, R7
CMPI 0, R7      ; same column is a conflict
BEQ conflict
CMPI 0, R7      ; if T < 0, convert it to abs(T)
BLT neg_t

abs_done:
MOV R3, R8      ; R8 = X - Y, the row distance
SUB R4, R8
CMP R7, R8      ; abs(A[X] - A[Y]) == X - Y means diagonal conflict
BEQ conflict
BUC check_previous

neg_t:
MOVI 0, R8      ; R8 = -T
SUB R7, R8
MOV R8, R7      ; R7 = abs(T)
BUC abs_done

conflict:
LOAD R5, R3     ; decrement A[X] and retry this row
SUBI 1, R5
STOR R5, R3
CMPI 0, R5      ; retry only while A[X] is still a positive column
BGT try_candidate
SUBI 1, R3      ; no columns left in this row, so backtrack to X-1
CMPI 0, R3      ; X == 0 would mean no solution
BNE conflict

done:
STOR R2, R0     ; mem[0] = S

; Copy A[1..8] to mem[10..17] so the testbench can validate the board
; without disturbing the benchmark's original A[1..8] array.
MOVI 10, R9
MOVI 1, R4
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9
ADDI 1, R4
ADDI 1, R9
LOAD R5, R4
STOR R5, R9

halt:
BUC halt        ; stable endpoint for long simulations
