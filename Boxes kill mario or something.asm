.orga 0x6C9C0
J 0x804043B0
NOP

.orga 0x12043B0
LUI T0, 0x8036
LW T0, 0x1160(T0)
LW T0, 0x68(T0) ;loads pointer to switch
LB T0, 0x18A(T0) ;loads bparam3
BEQZ T0, end
NOP

LUI T2, 0x8036
LW T2, 0x1158(T2)
LUI T5, 0x8036
LW T5, 0x1160(T5)
LW T4, 0x0214(T2)
BNE T4, T5, Branch1
NOP
LUI T6, 0x8034
ADDIU T6, T6, 0xB170
ADDIU T3, R0, 0x0064
SH T3, 0x00AE(T6)
Branch1:
B PrettyUselessBranchShineLikes
NOP
PrettyUselessBranchShineLikes:
NOP
end:
J 0x802B19C8
NOP

