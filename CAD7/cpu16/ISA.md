<!--
ENGN1600 Baseline RISC Processor
Anhang Li (anhangli@umich.edu)
-----
-->

Below is a normalized reference table for the full ISA, compiled from the opcode tables on **pages 3–6** of the PDF. The ISA uses a 16-bit instruction word, with the usual field layout `[15:12]=opcode`, `[11:8]=Rdest/cond/etc.`, `[7:4]=opcode extension or imm[7:4]`, `[3:0]=Rsrc/imm[3:0]`. 

## 1. Primary instruction encoding table

| Mnemonic | Operands       | [15:12] | [11:8] | [7:4]  | [3:0]   | Notes                                          |
| -------- | -------------- | ------: | ------ | ------ | ------- | ---------------------------------------------- |
| ADD      | Rsrc, Rdest    |  `0000` | Rdest  | `0101` | Rsrc    | baseline                                       |
| ADDI     | Imm, Rdest     |  `0101` | Rdest  | ImmHi  | ImmLo   | baseline, sign-extended imm                    |
| SUB      | Rsrc, Rdest    |  `0000` | Rdest  | `1001` | Rsrc    | baseline                                       |
| SUBI     | Imm, Rdest     |  `1001` | Rdest  | ImmHi  | ImmLo   | baseline, sign-extended imm                    |
| CMP      | Rsrc, Rdest    |  `0000` | Rdest  | `1011` | Rsrc    | baseline                                       |
| CMPI     | Imm, Rdest     |  `1011` | Rdest  | ImmHi  | ImmLo   | baseline, sign-extended imm                    |
| AND      | Rsrc, Rdest    |  `0000` | Rdest  | `0001` | Rsrc    | baseline                                       |
| ANDI     | Imm, Rdest     |  `0001` | Rdest  | ImmHi  | ImmLo   | baseline, zero-extended imm                    |
| OR       | Rsrc, Rdest    |  `0000` | Rdest  | `0010` | Rsrc    | baseline, `NOP = OR R0,R0`                     |
| ORI      | Imm, Rdest     |  `0010` | Rdest  | ImmHi  | ImmLo   | baseline, zero-extended imm                    |
| XOR      | Rsrc, Rdest    |  `0000` | Rdest  | `0011` | Rsrc    | baseline                                       |
| XORI     | Imm, Rdest     |  `0011` | Rdest  | ImmHi  | ImmLo   | baseline, zero-extended imm                    |
| MOV      | Rsrc, Rdest    |  `0000` | Rdest  | `1101` | Rsrc    | baseline                                       |
| MOVI     | Imm, Rdest     |  `1101` | Rdest  | ImmHi  | ImmLo   | baseline, zero-extended imm                    |
| LSH      | Ramount, Rdest |  `1000` | Rdest  | `0100` | Ramount | baseline, shift amount `-15..15` (2’s comp)    |
| LSHI     | Imm, Rdest     |  `1000` | Rdest  | `000s` | ImmLo   | baseline, `s = sign` (`0 = left`, 2’s comp)    |
| LUI      | Imm, Rdest     |  `1111` | Rdest  | ImmHi  | ImmLo   | baseline, load 8-bit immediate into upper byte |

---

## 2. Memory / control / system encodings

| Mnemonic | Operands       | [15:12] | [11:8] | [7:4]  | [3:0]   | Notes                           |
| -------- | -------------- | ------: | ------ | ------ | ------- | ------------------------------- |
| LOAD     | Rdest, Raddr   |  `0100` | Rdest  | `0000` | Raddr   | baseline                        |
| STOR     | Rsrc, Raddr    |  `0100` | Rsrc   | `0100` | Raddr   | baseline                        |
| Bcond    | disp           |  `1100` | cond   | DispHi | DispLo  | baseline, 2’s comp displacement |
| Jcond    | Rtarget        |  `0100` | cond   | `1100` | Rtarget | baseline                        |
| JAL      | Rlink, Rtarget |  `0100` | Rlink  | `1000` | Rtarget | baseline                        |

The final 4-bit condition map is:

| Mnemonic |   Bits | Description            | PSR condition     |
| -------- | -----: | ---------------------- | ----------------- |
| EQ       | `0000` | Equal                  | `Z = 1`           |
| NE       | `0001` | Not Equal              | `Z = 0`           |
| CS       | `0010` | Carry Set              | `C = 1`           |
| CC       | `0011` | Carry Clear            | `C = 0`           |
| HI       | `0100` | Higher than            | `L = 1`           |
| LS       | `0101` | Lower than or Same as  | `L = 0`           |
| GT       | `0110` | Greater Than           | `N = 1`           |
| LE       | `0111` | Less than or Equal     | `N = 0`           |
| FS       | `1000` | Flag Set               | `F = 1`           |
| FC       | `1001` | Flag Clear             | `F = 0`           |
| LO       | `1010` | Lower than             | `L = 0 and Z = 0` |
| HS       | `1011` | Higher than or Same as | `L = 1 or Z = 1`  |
| LT       | `1100` | Less Than              | `N = 0 and Z = 0` |
| GE       | `1101` | Greater than or Equal  | `N = 1 or Z = 1`  |
| UC       | `1110` | Unconditional          | N/A               |
| —        | `1111` | Never Jump             | N/A               |
