;;;;;if Bparam2 == 0 Recovery heart works as normal;;;;;
;;;;;if Bparam2  == 1 Recovery heart decreases marios health;;;;;
;;;;;if Bparam2 is anything but 1 or 0 Recovery heart does nothing;;;;;

.orga 0xC4C98	;Original location of recovery heart behaviour increase marios health
J 0x80404900	;Jumps to 80
NOP
NOP

.orga 0x1204900
LUI T4, 0x8036
LW T4, 0x1160(T4)
LB T4, 0x189(T4)

ADDIU T5, R0, 1
BEQZ T4, Normal	
NOP
BNE T4, T5, End

LBU T2, 0x00B2(T1) ;decreases Mario's health
ADDIU T3, T2, 0x0004 ;Value
B End
SB T3, 0x00B2(T1)

Normal:
LBU T2, 0x00B3(T1) ;increases Mario's health
ADDIU T3, T2, 0x0004 ;Value
SB T3, 0x00B3(T1)

End:
J 0x80309CA4
NOP