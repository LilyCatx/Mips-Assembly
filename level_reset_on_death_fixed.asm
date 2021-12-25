.orga 0x861C0
OR V0, R0, RA
JAL 0x8040FBC8
NOP

.orga 0x120FBC8

LA T0, 0x8029CE9C
ADDIU T1, R0, 0x2400
SH T1, 0(T0)
LA T0, 0x8029CEC0
SH T1, 0(T0)

LA T0, 0x8033B170

LUI T2, 0x8033 ;loads level ID
LH T2, 0xDDF8(T2)
ADDIU T3, R0, 0x0010
BEQ T2, T3, Reality ;checks if level ID is castle grounds to prevent crash
NOP

LUI T4, 0x8034
ADDIU T4, T4, 0xB170
LW T5, 0x000C(T4)
LUI AT, 0x0000
ORI AT, AT, 0x1321
BEQ T5, AT, Reality
NOP
LUI T6, 0x8034
ADDIU T6, T6, 0xB170
LW T7, 0x000C(T6)
LUI AT, 0x0000
ORI AT, AT, 0x1320
BEQ T7, AT, Reality
NOP

LB T1, 0xAE(T0)
BEQZ T1, Dreams
NOP

LW T1, 0xC(T0)
LI T2, 0x21312
BEQ T1, T2, Dreams
NOP

LA T0, 0x8033BAB0
LH T1, 0(T0)
ADDIU T2, R0, 267
BEQ T1, T2, Dreams
NOP

B Reality
NOP

Dreams:
LA T0, 0x8033B21E
ADDIU T1, R0, 0x0008
SB T1, 0(T0)
LA T0, 0x8033B262
ADDIU T1, R0, 0x0000
SH T1, 0(T0)
LA T0, 0x8033B218
SH T1, 0(T0)
LA T0, 0x8033B248
ADDIU T1, R0, 0x0002
SB T1, 0(T0)
LA T0, 0x80361414
ADDIU T1, R0, 0x0005
SH T1, 0(T0)
LA T0, 0x8033B170
ADDIU T1, R0, 0x0008
SB T1, 0xB3(T0)

Reality:
JR V0
NOP