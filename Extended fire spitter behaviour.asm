.orga 0xC84D4
J 0x8040A600
NOP

.orga 0x120A600
ADDIU SP, SP, -0x30
SW RA, 0x0024(SP)
LUI T6, 0x8036
LW T6, 0x1160(T6)
LW T7, 0x0160(T6)
SW T7, 0x00C8(T6)
LUI A0, 0x8036
LW A0, 0x1160(A0)
LUI A1, 0x3E19
LUI A2, 0x3DCC
ORI A2, A2, 0xCCCD
ORI A1, A1, 0x999A
JAL 0x802FAAC8			;;;Probably scale status;;;
ADDIU A0, A0, 0x00F4
SW V0, 0x002C(SP)
LW T8, 0x002C(SP)
BEQZ T8, Cheeseburger1		;;;if scale stays 0 or less than 0 jumps to end of behaviour;;;
NOP
LW T9, 0x002C(SP)
BGEZ T9, Cheeseburger2		;;;scale increased jump to branch2;;;
NOP
LUI T0, 0x8036
LW T0, 0x1160(T0)
B Cheeseburger1			;;;branch to end;;;
SW R0, 0x014C(T0)

Cheeseburger2:
LUI T1, 0x8036			;;;register now contains 0x80360000;;;
LW T1, 0x1160(T1)		;;;pointer to current object;;;
ADDIU AT, R0, 0x0001		;;;1;;;
LW T2, 0x0144(T1)		;;;Bparam stuff;;;
BNE T2, AT, Cheeseburger3	;;;Branches if value isnt 1;;;
NOP
LUI A0, 0x5055
JAL 0x802CA1E0			;;;play sound;;;
ORI A0, A0, 0x8081
LUI AT, 0x41A0
MTC1 AT, F4
LUI AT, 0x4170
MTC1 AT, F6
ADDIU T3, R0, 0x0091
ADDIU T4, R0, 0x1000
SW T4, 0x001C(SP)
SW T3, 0x0010(SP)
OR A0, R0, R0
OR A1, R0, R0
OR A2, R0, R0
LUI A3, 0x40A0
SWC1 F4, 0x0014(SP)
JAL 0x8030CD30			;;;object spit fire;;;
SWC1 F6, 0x0018(SP)
B Cheeseburger1
NOP

Cheeseburger3:
LUI T5, 0x8036			;;;register now contains 0x80360000;;;
LW T5, 0x1160(T5)		;;;pointer to current object;;;
ADDIU AT, R0, 0x0002		;;;2;;;
LW T7, 0x0144(T5)		;;;Bparam stuff;;;
BNE T7, AT, Cheeseburger4	;;;Branches if value isnt 2;;;
NOP
LUI A0, 0x5055
JAL 0x802CA1E0			;;;plays sound;;;
ORI A0, A0, 0x8081
LUI A0, 0x8036
LUI A2, 0x1300
ADDIU A2, A2, 0x1A0C
LW A0, 0x1160(A0)
JAL 0x8029EDCC
OR A1, R0, R0
B Cheeseburger1
NOP

Cheeseburger4:
LUI T6, 0x8036			;;;register now contains 0x80360000;;;
LW T6, 0x1160(T6)		;;;pointer to current object;;;
ADDIU AT, R0, 0x0005		;;;5;;;
LW T8, 0x0144(T6)		;;;bparam stuff;;;
BNE T8, AT, Cheeseburger5	;;;Branches if value isnt 5;;;
NOP
LUI A0, 0x8036
LUI A2, 0x1300
ADDIU A2, A2, 0x3510
LW A0, 0x1160(A0)
JAL 0x8029EDCC
ADDIU A1, R0, 0x00CD
B Cheeseburger1
NOP

Cheeseburger5:
LUI T9, 0x8036			;;;register now contains 0x80360000;;;
LW T9, 0x1160(T9)		;;;pointer to current object;;;
ADDIU AT, R0, 0x0006		;;;6;;;
LW T0, 0x0144(T9)		;;;Bparam stuff;;;
BNE T0, AT, Cheeseburger6	;;;Branches if value isnt 6;;;
NOP
LUI A0, 0x5055
JAL 0x802CA1E0			;;;play sound;;;
ORI A0, A0, 0x8081
LUI AT, 0x41A0
MTC1 AT, F8
LUI AT, 0x4170
MTC1 AT, F10
ADDIU T1, R0, 0x00CB
ADDIU T2, R0, 0x1000
SW T2, 0x001C(SP)
SW T1, 0x0010(SP)
OR A0, R0, R0
OR A1, R0, R0
OR A2, R0, R0
LUI A3, 0x40A0
SWC1 F8, 0x0014(SP)
JAL 0x8030CD30			;;;object spits fire;;;
SWC1 F10, 0x0018(SP)
LUI AT, 0x41A0
MTC1 AT, F16
LUI AT, 0x4170
MTC1 AT, F18
ADDIU T3, R0, 0x00CB
ADDIU T4, R0, 0x1000
SW T4, 0x001C(SP)
SW T3, 0x0010(SP)
OR A0, R0, R0
OR A1, R0, R0
ADDIU A2, R0, 0xFF38
LUI A3, 0x40A0
SWC1 F16, 0x0014(SP)
JAL 0x8030CD30			;;;object spits fire;;;
SWC1 F18, 0x0018(SP)
LUI AT, 0x41A0
MTC1 AT, F4
LUI AT, 0x4170
MTC1 AT, F6
ADDIU T5, R0, 0x00CB
ADDIU T7, R0, 0x1000
SW T7, 0x001C(SP)
SW T5, 0x0010(SP)
OR A0, R0, R0
OR A1, R0, R0
ADDIU A2, R0, 0x00C8
LUI A3, 0x40A0
SWC1 F4, 0x0014(SP)
JAL 0x8030CD30			;;;object spits fire;;;
SWC1 F6, 0x0018(SP)
B Cheeseburger1			;;;branch to end;;;
NOP

Cheeseburger6:
LUI T6, 0x8036
LW T6, 0x1160(T6)
ADDIU AT, R0, 0x0007
LW T8, 0x0144(T6)		;;;Bparam stuff;;;
BNE T8, AT, Cheeseburger7	;;;Branches if value isnt 7;;;
NOP
LUI A0, 0x8036
LUI A2, 0x1300
ADDIU A2, A2, 0x11D0
LW A0, 0x1160(A0)
JAL 0x8029EDCC
ADDIU A1, R0, 0x0068
B Cheeseburger1
NOP

Cheeseburger7:
LUI A0, 0x5055
JAL 0x802CA1E0			;;;play sound;;;
ORI A0, A0, 0x8081
LUI AT, 0x41A0
MTC1 AT, F8
LUI AT, 0x4170
MTC1 AT, F10
ADDIU T9, R0, 0x00CB
ADDIU T0, R0, 0x1000
SW T0, 0x001C(SP)
SW T9, 0x0010(SP)
OR A0, R0, R0
OR A1, R0, R0
OR A2, R0, R0
LUI A3, 0x40A0
SWC1 F8, 0x0014(SP)
JAL 0x8030CD30			;;;object spits fire;;;
SWC1 F10, 0x0018(SP)

Cheeseburger1:
B TheEnd
NOP

TheEnd:
LW RA, 0x0024(SP)
J 0x8030D58C
NOP

;;;-------------------------------------------------------------------------------------------------;;;
;;;-------------------------------------------------------------------------------------------------;;;

.orga 0xC8640
J 0x8040A8BC
NOP

.orga 0x120A8BC
ADDIU SP, SP, -0x30		;;;Start of bhv_small_piranha_flame_loop;;;
SW RA, 0x0024(SP)
LUI T6, 0x8036			;;;register now contains 0x80360000;;;
LW T6, 0x1160(T6)		;;;pointer to object;;;
LW T7, 0x0188(T6)		;;;Bparam1 logic;;;
SRA T8, T7, 16
ANDI T9, T8, 0xFFFF
BNEZ T9, Branch1
NOP
LUI T0, 0x8036
LW T0, 0x1160(T0)
LW T1, 0x0154(T0)		;;;Resets object timer;;;
BLEZ T1, Branch2
NOP
LUI A0, 0x8036			;;;object related crap;;;
JAL 0x802A0568			;;;Marks object for deletion;;;
LW A0, 0x1160(A0)
B Branch3
NOP

Branch2:
JAL 0x80383CB4			;;;Random Float;;;
NOP
LUI AT, 0x3F00
MTC1 AT, F4
NOP
SUB.S F6, F0, F4
SWC1 F6, 0x002C(SP)
LUI AT, 0x8034
LWC1 F8, 0x8C64(AT)
LWC1 F10, 0x002C(SP)
LUI AT, 0x3F80
MTC1 AT, F18
MUL.S F16, F8, F10
LUI T2, 0x8036
LW T2, 0x1160(T2)
LWC1 F6, 0x0034(T2)
ADD.S F4, F18, F16
MUL.S F8, F6, F4
SWC1 F8, 0x0030(T2)
LUI AT, 0x3F00
MTC1 AT, F10
LWC1 F18, 0x002C(SP)
LUI AT, 0x8034
LWC1 F6, 0x8C68(AT)
MUL.S F16, F10, F18
LUI T3, 0x8036
LW T3, 0x1160(T3)
LWC1 F8, 0x0034(T3)
SUB.S F4, F6, F16
MUL.S F10, F8, F4
SWC1 F10, 0x002C(T3)
JAL 0x80383BB0			;;;Random U16;;;
NOP
LUI T4, 0x8036
LW T4, 0x1160(T4)
SW V0, 0x00F0(T4)

Branch3:
B Branch4
NOP

Branch1:
JAL 0x802A2320			;;;Update floors and walls;;;
NOP
LUI T5, 0x8036
LW T5, 0x1160(T5)
LUI A2, 0x3F19
ORI A2, A2, 0x999A
ADDIU A0, T5, 0x00F4
JAL 0x802FA544
LW A1, 0x00F8(T5)
BEQZ V0, Branch5
NOP
LUI T6, 0x8036
LW T6, 0x1160(T6)
ADDIU A1, R0, 0x0200
JAL 0x8029E5EC
LW A0, 0x0160(T6)

Branch5:
LUI T7, 0x8036
LW T7, 0x1160(T7)
JAL 0x802FA1F8
LWC1 F12, 0x00F4(T7)
JAL 0x802A2348
ADDIU A0, R0, 0xFFB2
LUI T8, 0x8036
LW T8, 0x1160(T8)
LUI AT, 0x8034
LWC1 F6, 0x8C6C(AT)
LWC1 F18, 0x002C(T8)
LUI A2, 0x1300
ADDIU A2, A2, 0x5158
MUL.S F16, F18, F6
OR A0, T8, R0
LW A1, 0x00FC(T8)
MFC1 A3, F16
JAL 0x8029EEB8
NOP
LUI T9, 0x8036
LW T9, 0x1160(T9)
LW T0, 0x0154(T9)
LW T1, 0x0100(T9)
SLT AT, T1, T0
BEQZ AT, Branch6
NOP
LUI T2, 0x8036
LW T2, 0x1160(T2)
LUI T5, 0x1300
ADDIU T5, T5, 0x51AC
LWC1 F8, 0x00DC(T2)
LWC1 F10, 0x002C(T2)
SW T2, 0x0014(SP)
TRUNC.W.S F4, F8		;;;Sets Floating-point value to 32-bit fixed-point rounding towards zero;;;
SWC1 F10, 0x0010(SP)
LW T4, 0x00FC(T2)
SW T5, 0x001C(SP)
MFC1 A2, F4
ADDIU A0, R0, 0x0001
OR A1, R0, R0
OR A3, R0, R0
JAL 0x8029EFFC
SW T4, 0x0018(SP)
ADDIU A0, R0, 0x0008
JAL 0x802FA964
ADDIU A1, R0, 0x000F
LUI T6, 0x8036
LW T6, 0x1160(T6)
SW V0, 0x0100(T6)
LUI T7, 0x8036
LW T7, 0x1160(T7)
SW R0, 0x0154(T7)

Branch6:
LUI T8, 0x8036
LW T8, 0x1160(T8)
LUI A0, 0x8033
ADDIU A0, A0, 0x2C74
JAL 0x802FB938
LW A1, 0x014C(T8)
LUI T9, 0x8036
LW T9, 0x1160(T9)
LWC1 F18, 0x0104(T9)
LWC1 F6, 0x00F4(T9)
ADD.S F16, F18, F6
SWC1 F16, 0x0104(T9)
LUI T0, 0x8036
LW T0, 0x1160(T0)
LUI AT, 0x8034
LWC1 F4, 0x8C70(AT)
LWC1 F8, 0x0104(T0)
C.LT.S F4, F8
NOP
BC1T Branch7
NOP
LW T1, 0x00EC(T0)
ANDI T3, T1, 0x0278
BEQZ T3, Branch4
NOP

Branch7:
JAL 0x802FB128			;;;object dies when health is non positive;;;
NOP
LUI T2, 0x8036
LW T2, 0x1160(T2)
ADDIU AT, R0, 0x0003		;;;checks if 0003 is stored;;;
LW T4, 0x0068(T2)		;;;checks object parent might be skipped how code is structured;;;
LW T5, 0x0144(T4)		;;;Bparam2 Logic;;;
BNE T5, AT, Branch8		;;;checks if 3 is stored if not it branches;;;
NOP
LUI A0, 0x8036
LUI A2, 0x1300
ADDIU A2, A2, 0x1A0C		;;;bhvBlueFlamesGroup;;;
LW A0, 0x1160(A0)
JAL 0x8029EDCC			;;;spawn object;;;
OR A1, R0, R0

Branch8:
LUI T6, 0x8036
LW T6, 0x1160(T6)
ADDIU AT, R0, 0x0004		;;;checks if 0004 is stored;;;
LW T7, 0x0068(T6)		;;;checks object parent might be skipped how code is structured;;;
LW T8, 0x0144(T7)		;;;Bparam2 Logic;;;
BNE T8, AT, Branch4
NOP
LUI A0, 0x8036
LUI A2, 0x1300
ADDIU A2, A2, 0x3510		;;;BhvExplosion;;;
LW A0, 0x1160(A0)
JAL 0x8029EDCC			;;;spawn object;;;
ADDIU A1, R0, 0x00CD		;;;Model Explosion;;;
SW R0, 0x0028(SP)

Branch9:
LUI AT, 0x40A0
LUI T9, 0x8036
LW T9, 0x1160(T9)
MTC1 AT, F10
LUI T1, 0x1300
ADDIU T1, T1, 0x19C8		;;;bhvFlameFloatingLanding;;;
ADDIU T0, R0, 0x0090		;;;Model Red Flame;;;
SW T0, 0x0018(SP)
SW T1, 0x001C(SP)
OR A0, R0, R0
OR A1, R0, R0
OR A2, R0, R0
OR A3, R0, R0
SW T9, 0x0014(SP)
JAL 0x8029EFFC			;;;Spawn object relative with scale;;;
SWC1 F10, 0x0010(SP)
LW T3, 0x0028(SP)
ADDIU T2, T3, 0x0001
SLTI AT, T2, 0x0007		;;;7;;;
BNEZ AT, Branch9		;;;repeats spawning flames until equal to 0;;;
SW T2, 0x0028(SP)

Branch4:
LUI T4, 0x8036
LW T4, 0x1160(T4)
LUI AT, 0x4170
MTC1 AT, F6
LWC1 F18, 0x0030(T4)
MUL.S F16, F18, F6
SWC1 F16, 0x00DC(T4)
B End
NOP

End:
LW RA, 0x0024(SP)
J 0x8030D8C8
NOP

;;;-------------------------------------------------------------------------------------------------;;;
;;;-------------------------------------------------------------------------------------------------;;;

.orga 0xC844C			;;;Start of timer function;;;
J 0x8040AC0C			;;;Jump to 8040FC0C;;;
NOP

.orga 0x120AC0C			;;;place it jumped to;;;
LUI T6, 0x8036			;;;register now contains 0x80360000;;;
LW T6, 0x1160(T6)		;;;pointer to current object;;;
LB T6, 0x18A(T6)		;;;Bparam3 Stuffs;;;

ADDIU T4, R0, 1			;;;adds 1;;;
BEQZ T6, Normal			;;;if 0 skip to branch Normal;;;
NOP

JAL 0x802FA544
ADDIU A0, A0, 0x002C
LUI T6, 0x8036
LW T6, 0x1160(T6)
LW T7, 0x0154(T6)
B End2				;;;skips to end after it checks timer value;;;
SLTI AT, T7, 0x000B		;;;timer value;;;

Normal:
JAL 0x802FA544
ADDIU A0, A0, 0x002C
LUI T6, 0x8036
LW T6, 0x1160(T6)
LW T7, 0x0154(T6)
SLTI AT, T7, 0x0097		;;;Timer value;;;

End2:
J 0x8030D464
NOP

;;;-------------------------------------------------------------------------------------------------;;;
;;;-------------------------------------------------------------------------------------------------;;;

.orga 0x21D324
.dw 0x103E0008			;;;Damage value BhvExplosion;;;
.orga 0x21D32C
.dd 0x2B000000012C012C
.dw 0x012C0000			;;;Hitbox radius BhvExplosion;;;