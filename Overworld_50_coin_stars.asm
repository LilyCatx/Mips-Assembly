.orga 0x615C
J 0x;;;Empty_Space;;;
NOP

.orga 0x;;;Empty_Space;;;
LH T8, 0x00AE(T7)
BLEZ T8, Branch1
NOP
SRA T9, T8, 8
B Branch2
SH T9, 0x001E(SP)
Branch1:
SH R0, 0x001E(SP)
Branch2:
LUI T0, 0x8034
LH T0, 0xBAC6(T0)
SLTI AT, T0, 0x00FF
J 0x8024B180
NOP

.orga 0x6180
BEQZ AT, 0x61A0

.orga 0x8B7C
SW T7, 0x0134(T9)
LW T0, 0x0018(SP)
LW T3, 0x0020(SP)
LH T6, 0x00A8(T0)
LW T4, 0x0180(T3)
SUBU T2, T6, T4
SLTI AT, T2, 0x0064
BEQZ AT, Branch3
NOP
ADDIU AT, R0, 0x0032 ;;;Change this number for ammount of coins value is in hex;;;
BNE T6, AT, Branch3
NOP
JAL 0x802AB558
ADDIU A0, R0, 0x0006
Branch3:
B End
OR V0, R0, R0
NOP
End:
LW RA, 0x0014(SP)
ADDIU SP, SP, 0x18
JR RA
NOP