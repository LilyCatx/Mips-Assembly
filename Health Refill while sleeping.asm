.orga 0x1C4D8
J 0x8040F000
NOP

.orga 0x120F000
LW T7, 0x0028(SP)
LH T4, 0x00AE(T7)
ADDIU T8, T4, 0x0001 ;;;Change value for health refill speed;;;
SH T8, 0x00AE(T7)
B Branch
OR V0, R0, R0

Branch:
LW RA, 0x001C(SP)
LW S0, 0x0018(SP)
ADDIU SP, SP, 0x28
JR RA
NOP