.orga 0xC8B74
J 0x80404000
NOP

.orga 0x1204000
LUI T6, 0x8036
LW T6, 0x1160(T6)
LB T6, 0x189(T6)

ADDIU T4, R0, 1
BEQZ T6, Normal
NOP

JAL 0x8029E530
LW A0, 0x0108(T8)
LUI T9, 0x8036
LW T9, 0x1160(T9)
SW V0, 0x0108(T9)
LUI T0, 0x8036
LW T0, 0x1160(T0)
ORI AT, R0, 0x8000
LHU T1, 0x0106(T0)
BNE T1, AT, Branch1
NOP
LW T2, 0x0108(T0)
ADDIU AT, R0, 0x00A7
BNE T2, AT, Branch1
NOP
LUI T3, 0x8036
LW T3, 0x1160(T3)
B End2
SW R0, 0x014C(T3)

Branch1:
LUI T4, 0x8036
LW T4, 0x1160(T4)
LW T5, 0x010C(T4)
SLTI AT, T5, 0x00FF
BEQZ AT, End2
NOP
LW T6, 0x0154(T4)
SLTI AT, T6, 0x0002
BNEZ AT, End2
NOP
LUI T7, 0x8036
LW T7, 0x1160(T7)
LW T8, 0x010C(T7)
ADDIU T9, T8, 0x0001
SW T9, 0x010C(T7)
LUI A0, 0x504D
JAL 0x802CA1E0
ORI A0, A0, 0x0081
LUI T1, 0x8036
LW T1, 0x1160(T1)
LUI T2, 0x1300
ADDIU T2, T2, 0x521C
ADDIU T0, R0, 0x00B4
SW T0, 0x0014(SP)
SW T2, 0x0018(SP)
OR A0, R0, R0
OR A1, R0, R0
ADDIU A2, R0, 0xFFEC
ADDIU A3, R0, 0x0028
JAL 0x8029EF64
SW T1, 0x0010(SP)
LUI T5, 0x8036
LW T5, 0x1160(T5)
ADDIU T3, R0, 0xFFE2
SW T3, 0x00F4(T5)
LUI T4, 0x8036
LW T4, 0x1160(T4)
SW R0, 0x0154(T4)

End2:
B End1
NOP

Normal:
JAL 0x8029E530
LW A0, 0x0108(T8)
LUI T9, 0x8036
LW T9, 0x1160(T9)
SW V0, 0x0108(T9)
LUI T0, 0x8036
LW T0, 0x1160(T0)
ORI AT, R0, 0x8000
LHU T1, 0x0106(T0)
BNE T1, AT, Branch2
NOP
LW T2, 0x0108(T0)
ADDIU AT, R0, 0x00A7
BNE T2, AT, Branch2
NOP
LUI T3, 0x8036
LW T3, 0x1160(T3)
B End
SW R0, 0x014C(T3)

Branch2:
LUI T4, 0x8036
LW T4, 0x1160(T4)
LW T5, 0x010C(T4)
SLTI AT, T5, 0x0003
BEQZ AT, End
NOP
LW T6, 0x0154(T4)
SLTI AT, T6, 0x0003
BNEZ AT, End
NOP
LUI T7, 0x8036
LW T7, 0x1160(T7)
LW T8, 0x010C(T7)
ADDIU T9, T8, 0x0001
SW T9, 0x010C(T7)
LUI A0, 0x504D
JAL 0x802CA1E0
ORI A0, A0, 0x0081
LUI T1, 0x8036
LW T1, 0x1160(T1)
LUI T2, 0x1300
ADDIU T2, T2, 0x521C
ADDIU T0, R0, 0x00B4
SW T0, 0x0014(SP)
SW T2, 0x0018(SP)
OR A0, R0, R0
OR A1, R0, R0
ADDIU A2, R0, 0xFFEC
ADDIU A3, R0, 0x0028
JAL 0x8029EF64
SW T1, 0x0010(SP)
LUI T5, 0x8036
LW T5, 0x1160(T5)
ADDIU T3, R0, 0xFFE2
SW T3, 0x00F4(T5)
LUI T4, 0x8036
LW T4, 0x1160(T4)
SW R0, 0x0154(T4)

End:
B End1
NOP

End1:
LW RA, 0x0024(SP)
ADDIU SP, SP, 0x28
J 0x8030DC68
NOP

.orga 0xC90CC			 ;;;;;added 0x, and changed .org to .orga;;;;;

.orga 0xC8FC4
J 0x80404204
NOP

.orga 0x1204204 ;(0x80404204 in RAM) ;;;;;hook continues here;;;;;

ADDIU SP, SP, -0x18
SW RA, 0x0014(SP)
LUI T6, 0x8036
LW T6, 0x1160(T6)
LH T7, 0x0074(T6)
ANDI T8, T7, 0x0008
BNEZ T8, BranchVanilla1e
NOP
LW T9, 0x154(T6)
BEQZ T9, BranchVanilla2e
NOP
LUI AT, 0x8034
LWC1 F6, 0x8C74(AT)
LWC1 F4, 0x015C(T6)
C.LT.S F6, F4
NOP
BC1F BranchVanilla2e
NOP

BranchVanilla1e:
LUI A0, 0x8036
JAL 0x802A0568
LW A0, 0x1160(A0)

BranchVanilla2e:
LUI T0, 0x8036
LW T0, 0x1160(T0)
MTC1 R0, F10
LWC1 F8, 0x00E4(T0)
C.EQ.S F8, F10
NOP
BC1F Branch3e
NOP
JAL 0x802A2320
NOP
LUI AT, 0x4220
MTC1 AT, F12
JAL 0x802FA1F8
NOP
LUI A0, 0x8033
ADDIU A0, A0, 0x2C94;;;;;;;removing these two lines makes them bounce sometimes
JAL 0x802FB938	    ;;;;;;;and not collide with Mario
ADDIU A1, R0, 0x0001
BEQZ V0, BranchVanilla3e
NOP
LUI T1, 0x8036
LW T1, 0x1160(T1)
ORI AT, R0, 0x8000
LW T2, 0x00C8(T1)
ADDU T3, T2, AT
SW T3, 0x00C8(T1)
LUI T4, 0x8036
LW T4, 0x1160(T4)
LUI AT, 0x8034
LWC1 F18, 0x8C78(AT)
LWC1 F16, 0x00B8(T4)
MUL.S F4, F16, F18
SWC1 F4, 0x00B8(T4)
LUI AT, 0x41F0
LUI T5, 0x8036
LW T5, 0x1160(T5)
MTC1 AT, F6
NOP
SWC1 F6, 0x00B0(T5)
LUI AT, 0xC080
LUI T7, 0x8036
LW T7, 0x1160(T7)
MTC1 AT, F8
NOP
SWC1 F8, 0x00E4(T7)
JAL 0x802A05B4
NOP
B Branch1e 			 ;;;;;corrected branch syntax;;;;;
NOP

BranchVanilla3e:
LUI T4, 0x8036			 ;;;;;changed to T4 for efficiency;;;;;
LW T8, 0x1160(T4) 		 ;;;;;changed to correct address/changed to T4 for second argument for efficiency;;;;;
BEQ T9, AT, Branch2e 		 ;;;;;corrected branch syntax;;;;;
NOP
LW T6, 0x00EC(T8)
ANDI T0, T6, 0x0203
BEQZ T0, Branch1e		 ;;;;;corrected branch syntax;;;;;
NOP

Branch2e:			 ;;;;;corrected branch syntax;;;;;
;LUI A0, 0x8036			 ;;;;;unnecessary; used T4 instead;;;;;

;;;;;;;;;BPARAM DECIDING LOGIC
LUI T0, 0x8036
LW T0, 0x1160(T0)
LW T0, 0x68(T0) ;loads pointer to snufit
LB T0, 0x189(T0) ;loads snufit's bparam2
BEQZ T0, Bparam0
NOP
;;;;;;;;;BPARAM DECIDING LOGIC END

LUI A2, 0x1300
ADDIU A2, A2, 0x3510
LW A0, 0x1160(T4) 		 ;;;;;changed to correct address;;;;;
JAL 0x8029EDCC
ADDIU A1, R0, 0x00CD
LUI T4, 0x8036			 ;;;;;changed to T4 for efficiency;;;;;
LW T2, 0x1160(T4) 		 ;;;;;changed to correct address/changed to T4 for second argument for efficiency;;;;;
SH R0, 0x0074(T2)

Bparam0:
;LUI T1, 0x8036			 ;;;;;unnecessary; used T4 instead;;;;;
LW T1, 0x1160(T4) 		 ;;;;;changed to correct address;;;;;
ADDIU T3, R0, 0xFFFF
SW T3, 0x01C4(T1)
JAL 0x802FB128
NOP

Branch1e: 			;;;;;corrected branch syntax;;;;;
JAL 0x802A2348
ADDIU A0, R0, 0x004E 		;;;;;added missing vanilla line;;;;;
B Ende 				;;;;;added missing vanilla line;;;;;
NOP			 	;;;;;added missing vanilla line;;;;;

Branch3e: 			;;;;;fixes misaligned branch;;;;;
JAL 0x802A2644 			;;;;;added missing vanilla line;;;;;
NOP 				;;;;;added missing vanilla line;;;;;
Ende: 				;;;;;where End branch jumps to;;;;;
;J 0x8030E160 			;;;;;commented out unnecessary line;;;;;
;NOP 				;;;;;commented out unnecessary line;;;;;

LW RA, 0x0014(SP)
ADDIU SP, SP, 0x18
JR RA
NOP