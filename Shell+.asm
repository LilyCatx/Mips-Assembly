.orga 0x{empty space}
ADDIU SP, SP, -0x18
SW RA, 0x0014(SP)
SW A0, 0x0018(SP)
LW T6, 0x0018(SP)
LHU T7, 0x0002(T6)
ANDI T8, T7, 0x0002
BEQZ T8, Branch
NOP
LUI AT, 0x4270		;;;Sets mario's velocity in hight i know this is a weird number but its 60 i think;;;
MTC1 AT, F4		;;;Floats are just fucking scary and change 60 in decimal into 0x42700000;;;
LW T9, 0x0018(SP)	;;;Like why even is there a fucking 70 in there floating point numbers u crazy;;;
SWC1 F4, 0x004C(T9)	;;;Ah well im a fucking nerd ill just use floats instead;;;
LW T0, 0x0018(SP)
ORI AT, R0, 0x8000	;;;Set Mario angle afte hits wall Always turns 180 degrees;;;
LH T1, 0x002E(T0)	;;;Compatible with 46 degree wallkick patch but well mario turns 180 degrees;;;
ADDU T2, T1, AT
SH T2, 0x002E(T0)
LW T3, 0x0018(SP)
LW T4, 0x0008(T3)	;;;also there's stuff in here that displays particle flags;;;
ORI T5, T4, 0x0002	;;;This one being the stars that you see when you bonk;;;
SW T5, 0x0008(T3)	;;;but imagine me actually making proper notes;;;
LW T6, 0x0018(SP)
LUI A0, 0x0445
ORI A0, A0, 0xA081
LW A1, 0x0088(T6)
JAL 0x8031EB00		;;;This function plays a sound;;;
ADDIU A1, A1, 0x0054	;;;Cool, righ?;;;
Branch:
NOP
LW RA, 0x0014(SP)
ADDIU SP, SP, 0x18
JR RA			;;;Now this function, Totally fucking useless, I never return calls;;;
NOP			;;;So why should my code, Right :] ;;;

;;;=============================================;;;

.orga 0x26FD4
JAL 0x{empty space}	;;;New Function;;;
.orga 0x26FE4
JAL 0x{empty space}	;;;New Function;;;
			;;;Next line after this one sets up mario's velocity to 0 when hit lava wall i kept it unchanged;;;

;;;=============================================;;;

.orga 0x10444		;;;keep out of code if you want to use shells on quicksand;;;
NOP			;;;Makes it so quicksand kills shell mario by NOPing the branch to end of the quicksand function;;;