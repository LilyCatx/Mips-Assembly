.orga 0x23F18
LW T8, 0x0028(SP)
LBU T9, 0x00B2(T8)
ADDIU T0, T9, 0x0006
SB T0, 0x00B2(T8)
J 0x80268F54
NOP