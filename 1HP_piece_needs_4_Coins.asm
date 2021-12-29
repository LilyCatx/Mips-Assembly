.orga 0x8B2C
ADDIU SP, SP, -0x18
SW RA, 0x0014(SP)
SW A0, 0x0018(SP)
SW A1, 0x001C(SP)
SW A2, 0x0020(SP)
LW T6, 0x0018(SP)
LW T8, 0x0020(SP)
LH T7, 0x00A8(T6)
LW T9, 0x0180(T8)
ADDU T0, T7, T9
SH T0, 0x00A8(T6)
LW T1, 0x0018(SP)
LW T3, 0x0020(SP)
LBU T2, 0x00B3(T1)
LW T4, 0x0180(T3)
ADDU T5, T2, T4
SB T5, 0x00B3(T1)
LW T7, 0x0020(SP)
ORI T8, R0, 0x8000
SW T8, 0x0134(T7)
LUI T9, 0x8034
LH T9, 0xBA56(T9) ;;;BAC6 Not sure;;;
BLEZ T9, E1
NOP
SLTI AT, T9, 0x0010
BEQZ AT, E1
NOP
LW T0, 0x0018(SP)
LW T3, 0x0020(SP)
LH T6, 0x00A8(T0)
LW T2, 0x0180(T3)
SUBU T4, T6, T2
SLTI AT, T4, 0x0064 ;;;if coins counter is below 100;;;
BEQZ AT, E1
NOP
SLTI AT, T6, 0x0064 ;;;if coin counter hits 100;;;
BNEZ AT, E1
NOP
JAL 0x802AB558      ;;;Spawn Star no level exit;;;
ADDIU A0, R0, 0x0006
E1:
B End
OR V0, R0, R0
B End               ;;;Okay this branch is just totally useless;;;
NOP
End:
LW RA, 0x0014(SP)
ADDIU SP, SP, 0x18
JR RA
NOP