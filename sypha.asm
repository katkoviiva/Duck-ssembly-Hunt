;Duck Hunt disassembly
;To be compiled with ASM6N - a fork of ASM6 (https://forums.nesdev.org/viewtopic.php?t=18324)

incsrc Defines/Registers0.asm
incsrc Defines/Constants0.asm
incsrc Defines/Enums0.asm
incsrc Defines/RAM0.asm
incsrc iNES_Header0.asm
incsrc Macros0.asm

org $C000
FILLVALUE $FF												;freespace is marked with a bunch of $FFs.
RESET_C000:
CLD															;standard initialization. decimal mode
SEI															;interrupt

LOOP_C002:
LDA HardwareStatus                                          ;
BPL LOOP_C002                                               ;wait for NES power on...

LDX #$00                                                    ;
STX ControlBits                                             ;init NES registers
STX RenderBits                                              ;

DEX                                                         ;
TXS                                                         ;init stack

LDX RNG_Value                                               ;RNG seed

LDY #$06                                                    ;only clear $0000-$06FF
STY $01                                                     ;






LOOP_C01E:












CODE_C02C:


























LOOP_C056:






CODE_C061:







CODE_C06B:


CODE_C06E:







;game loop
LOOP_C07C:






NMI_C086:





















CODE_C0A6:












ExecuteGameCode_C0B3:




CODE_C0BA:





















CODE_C0DF:


CODE_C0E1:



















CODE_C0FF:













CODE_C112:






CODE_C11E:



CODE_C123:



dw InitGameplay_C81D
dw LoadDuckGame_C839
dw InitDuckGame_C854
dw ExecuteDuckGame_C86E
dw RoundEnd_D2C9                                            ;execute round end related shenanigans
dw DoNothing_C5E0                                           ;unused
dw InitGameOver_C779
dw GameOver_C72C
dw LoadClayShooting_D54B                                    ;
dw InitClayShooting_D56A
dw InitClayShootingPart2_D593
dw CODE_D5D2
dw RoundEnd_D2C9
dw ClayPigeonIntro_C7EF                                     ;
dw DoNothing_C5E0                                           ;unused...
dw DoNothing_C5E0                                           ;unused...
dw DoNothing_C5E0                                           ;pause state (nothing special happens)
dw UnpauseGame_C271                                         ;wait a little bit then unpause for real
dw WaitForGameplayModeChange_C625                           ;generic wait then change state... state

;title screen code
TitleScreenCode_C14E:
























CODE_C176:










RTS                                                         ;

CODE_C189:



CODE_C18D:


CODE_C190:






CODE_C199:







CODE_C1A3:



CODE_C1A9:





CODE_C1B2:



CODE_C1B7:



CODE_C1BB:









CODE_C1C8:






                                                
















CODE_C1EA:





















CODE_C20B:







CODE_C217:








CODE_C222:



dw InitTitleScreen_C5AA                                     ;
dw DoNothing_C5E0                                           ;

;screen clearing stuff
ClearScreenAndAttributesInit_C22B:



ClearScreenInit_C230:


CODE_C232:






ClearOAM_C23B:



CODE_C23F:






RTS                                                         ;

UpdatePalette_C249:












CODE_C25B:




RETURN_C262:
RTS

;using stripe format, uploads palette for ducks
UpdateDuckPalette_C263:




          





UnpauseGame_C271:





LOOP_C277:








RETURN_C283:
RTS                                                         ;

ReadControllers_C284:








CODE_C291:


LOOP_C293:























CODE_C2B6:


CODE_C2B9:



RETURN_C2BE:
RTS                                                         ;

BufferedDraw_C2BF:



Macro_SetWord BGTileBuffer, $00                             ;set buffer address as indirect address










LOOP_C2DB:











LOOP_C2EA:








CODE_C2F4:








RETURN_C302:
RTS                                                         ;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Fill screen routine
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Clears screen, fill it with one time
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;USED RAM ADRESSES:
;$00 - Tile value, used to fill screen
;$01 - VRAM tile write placement, used to determine starting position for tile drawing
;$02 - used as position for attribute clearing, VRAM's position, high byte
;ControlMirror - uses previous stored PPU bits to enable almost everything, except bit 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ClearScreen_C303:









CODE_C312:














LOOP_C328:
















LOOP_C341:



RTS                                                         ;/

;timer handler
HandleGlobalTimers_C348:









LOOP_C354:





CODE_C35A:


RTS                                                         ;

ExecutePointers_C35E:






















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Layout building routine
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;This routine draws tiles from table, accessed via indirect addressing, using NES Stripe Image RLE format
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;USED RAM ADRESSES:
;$00 - Table location in ROM, low byte
;$01 - Table location in ROM, high byte
;ControlMirror - contains previously enabled bits of $2000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LOOP_C37C:















CODE_C392:








CODE_C39E:




LOOP_C3A1:




CODE_C3A4:













DrawStripeImage_C3B8:





UpdateCameraPosition_C3C1:









;Set up buffered write.
;$00-$01 - VRAM location to write to
;$02 - row amount and length. high nibble is the amount of rows, while low nibble is the amount of tiles on a single row.
WriteScreenUpdateToBuffer_C3CE:

















LOOP_C3E5:














LOOP_C3FC:
























RTS                                                         ;

MoveToNextBufferByte_C426:













RETURN_C436:
RTS                                                         ;

;score related
;Input:
;$04 - substraction flag, clear - addition, set - substraction (substraction is unused in this game)
;$05 - Hundreds and tens thousands to add
;$06 - Thousands and hundreds to add
;$07 - Tens and ones to add
;A - score address offset, where 0 - mario and 1 - luigi
UpdateScore_C437:













CODE_C447:





















RTS                                                         ;you guessed it, calculated result

;the game never takes score away from you
CODE_C46A:



CODE_C46E:





































CODE_C4A2:

















RETURN_C4BE:
RTS

;Calculate counter value, like score, addition
;Input:
;$03 - original value to add to
;A - value to add
;Output:
;A - result
;Carry - if next calculation in this routine should have a +1 to the low digit
CounterAddition_C4BF:






CODE_C4CA:









CODE_C4D7:


RTS                                                         ;

CODE_C4DB:


RTS                                                         ;otherwise return

;Calculate counter value, like score, substraction
;$03 - original value to substract from
;A - value to substract
;Output:
;A - result
;Carry - if next calculation in this routine should have a -1 to the low digit
CounterSubstraction_C4E0:
JSR ExtractDigits_C502                                      ;










CODE_C4F3:









CODE_C4FF:

RTS                                                         ;

;extract two digits into two bytes
;Input:
;A - Value to get digits from
;
;Output:
;$01 - right digit (00-0F)
;$02 - left digit (00-F0)
ExtractDigits_C502:











;this code is used to calculate difference between player score(s) and TOP score to potentially replace it
;Input $00 - low nibble is player score offset (bits 0-2 ONLY), high nibble - TOP score offset (#$10 is added to it, so if it's #$F0 it'll result in #$00)
;low nibble bit 3 - run through 2 player scores (if not set, can be used for single player games)
UpdateTOPScore_C511:

















LOOP_C526:






CODE_C52F:




























CODE_C55A:
















CODE_C56F:










RETURN_C57B:
RTS                                                         ;

CODE_C57C:



CODE_C580:







RNG_C588:











CODE_C59A:






RTS

InitTitleScreen_C5AA:
JSR DisableRender_C5E1                                      ;hide any evidence of us messing with the screen


JSR WaitForNMI_C5D9                                         ;after clearing screen, take a break









JSR WaitForNMI_C5D9                                         ;a deserved vacation after the hard work













;a simple loop to take a break in
WaitForNMI_C5D9:
JSR PrepareForNMIWait_C61E                                  ;

LOOP_C5DC:



DoNothing_C5E0:
RTS

DisableRender_C5E1:
JSR WaitForNMI_C5D9                                         ;wait before we can do it




CODE_C5E8:


RTS                                                         ;

EnableRender_C5EE:
JSR WaitForNMI_C5D9                                         ;





;input Y - entity variable offset for Entity_Variables
GetCurrentEntityVariables_C5F7:




LOOP_C5FB:






RTS                                                         ;

;store from current entity variables to... entity variables. can move onto next entity or something.
UpdateEntityVariables_C607:



LOOP_C60B:






RTS                                                         ;

;X - table location, low byte
;Y - table location, high byte
DrawStripeImageInit_C617
STX $00                                                     ;
STY $01                                                     ;
JMP DrawStripeImage_C3B8                                    ;

;clear NMI-related variables to make it so that NMI can run its code and alert us when its done
PrepareForNMIWait_C61E:
LDA #$00                                                    ;
STA FrameFlag                                               ;
STA NMIFunctionsDisableFlag                                 ;
RTS                                                         ;

;change gameplay mode when the timer runs out
WaitForGameplayModeChange_C625:






RETURN_C62D:
RTS                                                         ;

;TimeGameplayModeChange
;X - gameplay mode to store after timer runs out
;A - amount of time to wait * 10
StartTimedGameplayModeChange_C62E:





RTS 

;clears RAM in range 0300-03FF (which includes entity variables)
Clear0300Page_C637:



LOOP_C63A:



RTS  

;clears RAM $30-$FF
ClearZeroPageVariables_C641:



LOOP_C645:



RTS

;clear RAM 40-BF
ClearZeroPageVariablesLimited_C64B:



LOOP_C64F:



RTS

;Puts each individual digit into buffer to update it later
PutScoreIntoBuffer_C655:



LOOP_C659:






















;$0C - shape
;$B1 - vertical position
;$B2 - horizontal position
DrawZapperShape_C67C:




















CODE_C695:







CODE_C69E:



























HandleHitTableVisualUpdate_C6C4:






DrawHitTable_C6CC:







CODE_C6D6:




LOOP_C6DA:





CODE_C6E2:






CODE_C6E9:







HandleBulletVisualUpdate_C6F5:









LOOP_C701:






CODE_C70A:


CODE_C70C:











;X - VRAM location low byte
;Y - VRAM location high byte
TransferBGWriteToBuffer_C71D:









GameOver_C72C:








RETURN_C739:
RTS                                                         ;

CODE_C73A:


CODE_C73C:













LOOP_C74C:














LOOP_C762:















InitGameOver_C779:

JSR WaitForNMI_C5D9












RTS

;fill the bottom bar with required hits
UpdateRequiredHits_C793:


LOOP_C795:







CODE_C79F:


CODE_C7A1:











;add +1 to the round counter and queue it for drawing
UpdateRoundNumber_C7B3:


















CODE_C7CE:













CODE_C7E1:








ClayPigeonIntro_C7EF:




CODE_C7F6:


RTS



CODE_C7FB:


















CODE_C818:



RETURN_C81C:
RTS

InitGameplay_C81D:













CODE_C836:

RTS

LoadDuckGame_C839:
JSR WaitForNMI_C5D9

DrawStripeImage Layout_DuckGame_E042











InitDuckGame_C854:















RTS                                                         ;

ExecuteDuckGame_C86E:














RTS                                                         ;

HandleDuckEntities_C890:









HandleSecondDuck_C8A2:









CODE_C8B4:












CODE_C8C4:






















CODE_C8E5:



JSR WaitForNMI_C5D9









CODE_C8FB:





RETURN_C901:
RTS

ExecuteDuckEntityCode_C902:



dw DoNothing_C5E0                                           ;do nothing (fled/lying on the ground)
dw DuckEntity_Init_C919                                     ;
dw CODE_C932
dw CODE_CA19

dw CODE_CC1F
dw CODE_CC3D
dw DuckEntity_StartFalling_CC4F
dw DuckEntity_Falling_CC7C
dw CODE_CC8B

DuckEntity_Init_C919:


LOOP_C91B:














CODE_C92F:


RETURN_C931:
RTS                                                         ;

CODE_C932:













CODE_C946:









CODE_C955:



CODE_C958:



























CODE_C980:











CODE_C992:





CODE_C996:



















CODE_C9B2:




CODE_C9B9:











CODE_C9C9:





CODE_C9D0:













CODE_C9E2:


























CODE_CA08:




CODE_CA0E:






RTS

CODE_CA19:






CODE_CA22:





CODE_CA29:














CODE_CA3E:



CODE_CA42:


CODE_CA45:










CODE_CA53:








CODE_CA5F:





CODE_CA66:








CODE_CA70:

















CODE_CA8A:


CODE_CA8D:














CODE_CAA5:


;this code is responsible for manipulating duck movement with D-pad
CODE_CAA8:


















CODE_CABF:







CODE_CACA:






CODE_CAD1:





CODE_CAD7:




CODE_CADB:





CODE_CAE3:





CODE_CAE9:




CODE_CAED:














CODE_CB06:












CODE_CB1B:








CODE_CB29:








CODE_CB37:








CODE_CB45:




CODE_CB4B:



CODE_CB50:


CODE_CB52:



CODE_CB56:


CODE_CB59:















RTS


CODE_CB70:





CODE_CB77:


























CODE_CBA2:





CODE_CBA8:





CODE_CBB0:







CODE_CBBC:



CODE_CBC0:


CODE_CBC3:


CODE_CBC6:







CODE_CBD1:




CODE_CBD7:


CODE_CBD9:







CODE_CBE6:













CODE_CBF9:


CODE_CBFB:

















CODE_CC14:


CODE_CC16:






CODE_CC1F:















CODE_CC37:



RTS

CODE_CC3D:










CODE_CC4C:


DuckEntity_StartFalling_CC4F:














CODE_CC64:
















DuckEntity_Falling_CC7C:





CODE_CC85:



RTS                                                         ;

CODE_CC8B:






HandleDogEntity_CC94:












RETURN_CCA8:
RTS                                                         ;bow and quit

;dog state pointers
ExecuteDogEntityCode_CCA9:



dw DoNothing_C5E0
dw DogEntity_Init_CCD4
dw CODE_CD16
dw CODE_CD1D
dw CODE_CD3C
dw CODE_CE4D
dw CODE_CD4C
dw CODE_CE4D
dw CODE_CD52
dw CODE_CD5C
dw CODE_CD6C ;laugh?
dw CODE_CE4D
dw CODE_CD80 ;got ducks
dw CODE_CE4D
dw SpawnDucks_CD9A ;re-enable ducks
dw CODE_CE18
dw CODE_CE2E ;game over laugh
dw CODE_CE4D
dw CODE_CE40

DogEntity_Init_CCD4:


CODE_CCD6:





















RTS

CODE_CCF7:









CODE_CD05:









RTS                                                         ;

CODE_CD16:




CODE_CD1D:











RETURN_CD2D:
RTS

CODE_CD2E:








RTS

CODE_CD3C:






CODE_CD44:





CODE_CD4C:




CODE_CD52:







CODE_CD5C:









CODE_CD69:


CODE_CD6C:













CODE_CD80:

















SpawnDucks_CD9A:























CODE_CDBA:


















CODE_CDD9:






































RTS

CODE_CE18:











CODE_CE29:


RTS

CODE_CE2E:











CODE_CE40:









;a drawing routine of sorts
CODE_CE4D:






CODE_CE56:










dw DoNothing_C5E0                                           ;unused
dw DoNothing_C5E0                                           ;unused
dw CODE_CF07
dw CODE_CF00
dw CODE_CEF9
dw CODE_CEED

CODE_CE72:















CODE_CE8C:











CODE_CE9C:







CODE_CEA8:



CODE_CEAD:





CODE_CEB5:











CODE_CEC4:




CODE_CEC9:







CODE_CED4:









CODE_CEE1:




CODE_CEE6:




CODE_CEED:







RTS


CODE_CEF9:


CODE_CEFB:



CODE_CF00:




CODE_CF07:



CODE_CF0B:






RTS

;keep ducks in bounds?
CODE_CF16:












CODE_CF2A:





RTS

CODE_CF33:


CODE_CF36:


CODE_CF39:






RTS

;input A - palette offset
LoadDuckPalette_CF44:




CODE_CF49:






RTS

;clay pigeon score
CODE_CF56:












;duck score i think...
CODE_CF68:











CODE_CF78:





CODE_CF7F:














ShowFlyAwayMessage_CF96:





















RETURN_CFB9:
RTS                                                         ;

HandleScoreSprites_CFBA:







CODE_CFC5:










CODE_CFD3:




















RETURN_CFF8:
RTS                                                         ;

SpawnScoreSprite_CFF9:






CODE_D001:



















SpriteDrawRoutine_D01B:







Macro_SetWord POINTERS_DAC5, $12











LOOP_D038:







ClearEntityOAM_D042:


LOOP_D044:






RETURN_D04F:
RTS                                                         ;

CODE_D050:






















CODE_D06D:






















CODE_D08C:


LOOP_D08E:


LOOP_D08F:










CODE_D0A0:

















CODE_D0B9:






























CODE_D0E9:












CODE_D0FE:









CODE_D10E:




CODE_D114:



CODE_D117:









CODE_D123:






RETURN_D12A:
RTS

;input A
InvertValue_D12B:





HandleZapperInput_D131:






CODE_D13C:



RETURN_D140:
RTS                                                         ;

CODE_D141:












CODE_D153:









HandleZapperFunctions_D160:



DisableZapper_D164:



RETURN_D168:
RTS                                                         ;

CODE_D169:




































CODE_D19F:














CODE_D1B5:











CODE_D1C7:


CODE_D1CA:
JSR PrepareForNMIWait_C61E                                  ;

LOOP_D1CD:










CODE_D1DD:





CODE_D1E6:









CODE_D1F4:













CODE_D207:
















CODE_D222:













CODE_D235:










CODE_D246:









CODE_D256:


CODE_D259:









CODE_D266:





CODE_D26A:



CODE_D270:















CODE_D28A:






DrawZapperShapePrep_D292:










;note: only dog only shows up in duck games, but it's there in spirit at clay shooting. watching over you from the skies.
SetRequiredAmountOfHitsAndSummonDog_D2A4:


CODE_D2A6:







CODE_D2B1:














RTS                                                         ;

;victory state
RoundEnd_D2C9:



dw HitTableShuffleDelay_D2D6
dw ShuffleHitTable_D2DD
dw RoundBeatenAnimation_D33D
dw WaitAfterPerfect_D3C9

HitTableShuffleDelay_D2D6:






ShuffleHitTable_D2DD:
LDA Timer_2B
BNE RETURN_D32A 




















































RETURN_D32A:
RTS













RoundBeatenAnimation_D33D:







































































































WaitAfterPerfect_D3C9:









































































































































































































CODE_D4D4:



InitVariablesAndOAM_D4D9:




QueueSFX_Silence_D4E2:



QueueSFX_ZapperShot_D4E6:



QueueSFX_ClayPigeonHit_D4EA:



QueueSFX_WingFlag_D4EE:



QueueSFX_DuckFall_D4F2:



QueueSFX_ClayPigeonFall_D4F6:



QueueSFX_DogLaugh_D4FA:



CODE_D4FE:


CODE_D500:


RTS

QueueSFX_ClayShootingStartTheme_D505:



QueueSFX_TitleTheme_D509:



;game over song
QueueSFX_GameOverTheme_D50D:



;happy jingle when got a duck or two
QueueSFX_GotDuckJingle_D511:



QueueSFX_DuckGameStartTheme_D515:



;shuffle sfx
QueueSFX_DuckGameStartTheme_D519:



QueueSFX_BeatRoundTheme_D51D:



QueueSFX_PauseJingle_D521:


CODE_D523:


RTS

QueueSFX_Bark_D528:



QueueSFX_Quack_D52C:






QueueSFX_GroundThud_D534:



QueueSFX_PerfectJingle_D538:



QueueSFX_ClayPigeonThrow_D53C:






QueueSFX_GameOverJingle_D544:


CODE_D546:


RTS

LoadClayShooting_D54B:


DrawStripeImage Layout_ClayShooting_E26C














InitClayShooting_D56A





















RTS                                                         ;

;even MORE init!!
InitClayShootingPart2_D593:















CODE_D5AD:
























RTS                                                         ;

CODE_D5D2:












RTS                                                         ;


HandleClayPigeons_D5EE:









CODE_D600:









CODE_D612:











CODE_D627:

















CODE_D640:





CODE_D646:



CODE_D64B:





RETURN_D651:
RTS


ExecuteClayPigeonCode_D652



dw DoNothing_C5E0
dw ClayPigeonEntity_Init_D669
dw CODE_D678
dw CODE_D6D5
dw CODE_D752
dw CODE_D78F
dw DoNothing_C5E0                                           ;unused
dw DoNothing_C5E0                                           ;unused
dw CODE_D7C5

ClayPigeonEntity_Init_D669:


LOOP_D66B:







RTS

CODE_D678:




















CODE_D697:









































CODE_D6D4:
RTS

CODE_D6D5:








CODE_D6E0:









CODE_D6EC:


CODE_D6EE:









CODE_D6FD:


CODE_D700:









































CODE_D73E:









CODE_D74D:


RTS


CODE_D752:











CODE_D762:










CODE_D774:















RTS

CODE_D78F:















CODE_D7A7:









CODE_D7B5:






CODE_D7BE:



RTS

CODE_D7C5:






;clay pigeon particle related
CODE_D7CE:




CODE_D7D4:






CODE_D7DC:



CODE_D7E0:
















CODE_D7F9:









CODE_D805:















RETURN_D81A:
RTS

CODE_D81B:













CODE_D82B:


RTS

CODE_D82F:























































































RTS

CODE_D8AE:


LOOP_D8B0:








CODE_D8BB:











CODE_D8CC:








RTS


CODE_D8DB:










LOOP_D8E9:










CODE_D8FA:








RTS

CODE_D907:















LOOP_D91B:




CODE_D921:














CODE_D937:

RTS

CODE_D93A:


















CODE_D959:


LOOP_D95B:












CODE_D970:





CODE_D977:
















CODE_D991:


LOOP_D993:















CODE_D9AB:




RTS


CODE_D9B3:




CODE_D9BA:








CODE_D9C7:




CODE_D9CE:




CODE_D9D5:








CODE_D9E2:













RETURN_D9F5:
RTS

CODE_D9F6:







dw DoNothing_C5E0                                           ;unused
dw CODE_DA21
dw CODE_DA2E
dw CODE_DA38
dw CODE_DA40
dw CODE_DA45
dw CODE_DA4D
dw CODE_DA57
dw DoNothing_C5E0                                           ;unused
dw CODE_DA61
dw CODE_DA6C
dw CODE_DA7D
dw CODE_DA75
dw CODE_DA85
dw CODE_DA90
dw CODE_DA9A

CODE_DA21:



CODE_DA26:




CODE_DA2E:






CODE_DA38:




CODE_DA40:



CODE_DA45:


CODE_DA48:



CODE_DA4D:





CODE_DA57:



CODE_DA5C:



CODE_DA61:





CODE_DA6C:






CODE_DA75:




CODE_DA7D:




CODE_DA85:


CODE_DA88:




CODE_DA90:





CODE_DA9A:





CODE_DAA5:







CODE_DAB0:


CODE_DAB2:

RTS

CODE_DAB5:







CODE_DAC0:


CODE_DAC2:

RTS

;pointers to sprite images
POINTERS_DAC5:
dw DATA_DB0F
dw DATA_DB14
dw DATA_DB1D
dw DATA_DB26
dw DATA_DB2F
dw DATA_DB38
dw DATA_DB41
dw DATA_DB4A
dw DATA_DB5B
dw DATA_DB86
dw DATA_DB6C
dw DATA_DB79
dw DATA_DB8F
dw DATA_DB9C
dw DATA_DBA9
dw DATA_DBB6
dw DATA_DBC3
dw DATA_DC3A
dw DATA_DBFA
dw DATA_DC07
dw DATA_DC0C
dw DATA_DC25
dw DATA_DBD0
dw DATA_DBE5
dw DATA_DC4B
dw DATA_DC50
dw DATA_DC61
dw DATA_DC72
dw DATA_DC7B
dw DATA_DC88
dw DATA_DC91
dw DATA_DC9A
dw DATA_DC9F
dw DATA_DCA8
dw DATA_DCAD
dw DATA_DCB6
dw UNUSED_DCBB                                                ;unused?

;format: pointer for the sprite image, followed by y-offset and x-offset. repeat until hitting break command $00
DATA_DB0F:
dwb DATA_DD0C
db $F0,$F0
db $00

DATA_DB14:
dwb DATA_DD24
db $F0,$F0

dwb DATA_DDE1
db $EF,$08
db $00

DATA_DB1D:
dwb DATA_DD3A
db $F0,$F0

dwb DATA_DDE1
db $EE,$08
db $00

DATA_DB26:
dwb DATA_DD53
db $F0,$F8

dwb DATA_DD65
db $F4,$F0
db $00

DATA_DB2F:
dwb DATA_DD6F
db $F0,$F8

dwb DATA_DD81
db $FC,$F0
db $00

DATA_DB38:
dwb DATA_DD8A
db $F0,$F8

dwb DATA_DD9C
db $04,$F0
db $00

DATA_DB41:
dwb DATA_DDC3
db $F0,$F0

dwb DATA_DDD7
db $FC,$10
db $00

DATA_DB4A:
dwb DATA_DDE6
db $F8,$F8

dwb DATA_DDEF
db $FF,$F0

dwb DATA_DDF4
db $F7,$08

dwb DATA_DDDC
db $FB,$10
db $00

DATA_DB5B:
dwb DATA_DDFA
db $F8,$F8

dwb DATA_DDEF
db $FE,$F0

dwb DATA_DDF4
db $F6,$08

dwb DATA_DDD7
db $FA,$10
db $00

DATA_DB6C:
dwb DATA_DE04
db $F0,$F4

dwb DATA_DE12
db $F4,$04

dwb DATA_DE17
db $08,$04
db $00

DATA_DB79:
dwb DATA_DE1C
db $F0,$FC

dwb DATA_DE2A
db $F4,$F4

dwb DATA_DE2F
db $08,$F4
db $00

DATA_DB86:
dwb DATA_DDA5
db $F0,$F0

dwb DATA_DDBD
db $08,$FA
db $00

DATA_DB8F:
dwb DATA_DE90
db $F8,$10

dwb DATA_DE34
db $F0,$E8

dwb DATA_DFED
db $E8,$EA
db $00

DATA_DB9C:
dwb DATA_DE90
db $F8,$10

dwb DATA_DE4B
db $F0,$E8

dwb DATA_DFF2
db $E0,$F0
db $00

DATA_DBA9:
dwb DATA_DE90
db $F8,$10

dwb DATA_DE62
db $F0,$E8

dwb DATA_DFED
db $E8,$EA
db $00

DATA_DBB6:
dwb DATA_DE90
db $F8,$10

dwb DATA_DE79
db $F0,$E8

dwb DATA_DFF2
db $E0,$F0
db $00

DATA_DBC3:
dwb DATA_DE9A
db $F8,$10

dwb DATA_DE34
db $F0,$E8

dwb DATA_DFED
db $E8,$EA
db $00

DATA_DBD0:
dwb DATA_DEA4
db $F0,$F8

dwb DATA_DEB8
db $10,$F8

dwb DATA_DEC0
db $ED,$F0

dwb DATA_DEC6
db $F0,$08

dwb DATA_DECB
db $FE,$F0
db $00

DATA_DBE5:
dwb DATA_DED3
db $F0,$F8

dwb DATA_DEE7
db $10,$F8

dwb DATA_DEEF
db $ED,$F0

dwb DATA_DEF5
db $F0,$08

dwb DATA_DEFA
db $FE,$F0
db $00

DATA_DBFA:
dwb DATA_DF02
db $E0,$00

dwb DATA_DF0B
db $F0,$10

dwb DATA_DF10
db $F0,$F0
db $00

DATA_DC07:
dwb DATA_DF29
db $F0,$F0
db $00

DATA_DC0C:
dwb DATA_DF3F
db $ED,$F0

dwb DATA_DF45
db $03,$F0

dwb DATA_DF4B
db $F0,$F8

dwb DATA_DF55
db $10,$F8

dwb DATA_DF5D
db $F0,$00

dwb DATA_DF80
db $04,$18
db $00

DATA_DC25:
dwb DATA_DF85
db $F0,$E0

dwb DATA_DF5D
db $F0,$00

dwb DATA_DFAB
db $04,$E0

dwb DATA_DFB0
db $04,$18

dwb DATA_DF55
db $10,$F8
db $00

DATA_DC3A:
dwb DATA_DFB5
db $E0,$00

dwb DATA_DFCB
db $00,$00

dwb DATA_DFDA
db $F0,$E8

dwb DATA_DFF8
db $E0,$F0
db $00

DATA_DC4B:
dwb DATA_DFFE
db $F8,$F4
db $00

DATA_DC50:
dwb DATA_E00F
db $FC,$F5

dwb DATA_E014
db $FC,$03

dwb DATA_E019
db $F9,$FC

dwb DATA_E01E
db $FE,$FC
db $00

DATA_DC61:
dwb DATA_E00F
db $FC,$F7

dwb DATA_E014
db $FC,$01

dwb DATA_E019
db $FA,$FC

dwb DATA_E01E
db $FD,$FC
db $00

DATA_DC72:
dwb DATA_E00F
db $FC,$F8

dwb DATA_E014
db $FC,$00
db $00

DATA_DC7B:
dwb DATA_E023
db $FC,$F7

dwb DATA_E023
db $FC,$F9

dwb DATA_E028
db $FC,$01
db $00

DATA_DC88:
dwb DATA_E023
db $FC,$F8

dwb DATA_E028
db $FC,$00
db $00

DATA_DC91:
dwb DATA_E023
db $FC,$F9

dwb DATA_E028
db $FC,$FF
db $00

DATA_DC9A:
dwb DATA_E02D
db $FC,$FC
db $00

DATA_DC9F:
dwb DATA_E032
db $FC,$FC

dwb DATA_E032
db $FC,$FB
db $00

DATA_DCA8:
dwb DATA_E032
db $FC,$FC
db $00

DATA_DCAD:
dwb DATA_E037
db $FC,$FC

dwb DATA_E037
db $FC,$FD
db $00

DATA_DCB6:
dwb DATA_E037
db $FC,$FC
db $00

UNUSED_DCBB:
dwb UNUSED_E03C
db $FC,$F8
db $00

;general sprite tile offsets for drawing a sprite image, depending on the image size
;y-offset, x-offset
;16x32
GeneralSpriteTileOffsets_DCC0:
db $00,$00
db $08,$00
db $10,$00
db $18,$00
db $00,$08
db $08,$08
db $10,$08
db $18,$08

;"duck size". not a 32x32
db $00,$00
db $00,$08
db $00,$10
db $00,$18
db $08,$00
db $08,$08
db $08,$10
db $08,$18
db $10,$00
db $10,$08
db $10,$10
db $10,$18
db $18,$00
db $18,$08
db $18,$10
db $18,$18
db $08,$20                                                  ;looks like these were added later...
db $10,$20
db $18,$20

db $18,$20                                                  ;unused (placeholder?)

;16x24
db $00,$00
db $08,$00
db $10,$00
db $00,$08
db $08,$08
db $10,$08

;size 3
db $00,$00
db $08,$00
db $00,$18
db $08,$18

;format:
;first byte is the image size, using general tile offset table. available sizes are 32x16, 32x32, 24x24 and 16x16
;then follows image data.
;$FD - set OAM tile property, using the immediate next byte
;$FE - skip tile
DATA_DD0C:
db $01

db $FD,OAMProp_Palette0
db $00,$01,$02

db $FD,OAMProp_Palette1
db $03

db $FD,OAMProp_Palette0
db $04,$05,$06,$07
db $08,$09,$0A,$FE

db $FD,OAMProp_Palette1
db $0B,$0C

db $FF

DATA_DD24:
db $01
db $FD,OAMProp_Palette0,$FE,$FE,$0D,$FE
db $FD,OAMProp_Palette0,$0F,$10,$11,$FE,$12,$13,$14,$15
db $FD,OAMProp_Palette1,$16,$17
db $FF

DATA_DD3A:
db $01
db $FD,OAMProp_Palette0,$FE,$FE,$18,$FE
db $FD,OAMProp_Palette0,$1A,$1B,$1C,$FE,$1D,$1E,$1F,$FE
db $FD,OAMProp_Palette1,$20,$21
db $FD,OAMProp_Palette0,$22,$FF

DATA_DD53:
db $00
db $FD,OAMProp_Palette0,$25,$26,$27
db $FD,OAMProp_Palette1,$28
db $FD,OAMProp_Palette0|OAMProp_XFlip,$25,$26,$27
db $FD,OAMProp_Palette1|OAMProp_XFlip,$28
db $FF

DATA_DD65:
db $03
db $FD,OAMProp_Palette0,$23,$24
db $FD,OAMProp_Palette0|OAMProp_XFlip,$23,$24
db $FF

DATA_DD6F:
db $00
db $FD,OAMProp_Palette0,$2A,$2B,$2C
db $FD,OAMProp_Palette1,$2D
db $FD,OAMProp_Palette0|OAMProp_XFlip,$2A,$2B,$2C
db $FD,OAMProp_Palette1|OAMProp_XFlip,$2D
db $FF

DATA_DD81:
db $03
db $FD,OAMProp_Palette0,$29,$FE
db $FD,OAMProp_Palette0|OAMProp_XFlip,$29
db $FF

DATA_DD8A:
db $00
db $FD,OAMProp_Palette0
db $2F,$30,$31
db $FD,OAMProp_Palette1
db $32
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $2F,$30,$31
db $FD,OAMProp_Palette1|OAMProp_XFlip
db $32
db $FF

DATA_DD9C:
db $03

db $FD,OAMProp_Palette0
db $2E,$FE
db $FD,OAMProp_Palette0|OAMProp_XFlip,$2E

db $FF

DATA_DDA5:
db $01

db $FD,OAMProp_Palette0
db $33,$34,$35

db $FD,OAMProp_Palette1
db $36

db $FD,OAMProp_Palette0
db $37,$38,$39

db $FD,OAMProp_Palette1
db $3A

db $FD,OAMProp_Palette0
db $FE,$3B,$3C,$3D

db $FF

DATA_DDBD:
db $01
db $FD,OAMProp_Palette1
db $3E,$3F
db $FF

DATA_DDC3:
db $01

db $FD,OAMProp_Palette0
db $FE,$40,$41,$FE
db $FE,$42,$43,$44
db $45,$46,$47,$48
db $FE

db $FD,OAMProp_Palette1
db $49
db $FF

DATA_DDD7:
db $00
db $FD,OAMProp_Palette1
db $4A
db $FF

DATA_DDDC:
db $00
db $FD,OAMProp_Palette1
db $F6
db $FF

DATA_DDE1:
db $00
db $FD,OAMProp_Palette1
db $03
db $FF

DATA_DDE6:
db $02
db $FD,OAMProp_Palette1
db $9F,$A0,$A1,$A2,$A3
db $FF

DATA_DDEF:
db $00
db $FD,OAMProp_Palette1
db $45
db $FF

DATA_DDF4:
db $00
db $FD,OAMProp_Palette0
db $44,$48
db $FF

DATA_DDFA:
db $02
db $FD,OAMProp_Palette1
db $A4,$A5,$A6,$A7
db $A8,$A9
db $FF

DATA_DE04:
db $00

db $FD,OAMProp_Palette1
db $AB,$AC,$FE,$FE,$0E,$19,$AA

db $FD,OAMProp_Palette0|OAMProp_YFlip
db $E5

db $FF

DATA_DE12:
db $00
db $FD,OAMProp_Palette1|OAMProp_YFlip
db $EA
db $FF

DATA_DE17:
db $00
db $FD,OAMProp_Palette1|OAMProp_YFlip
db $E9
db $FF

DATA_DE1C:
db $00

db $FD,OAMProp_Palette1|OAMProp_XFlip
db $0E,$19,$AA

db $FD,OAMProp_Palette0|OAMProp_XFlip|OAMProp_YFlip
db $E5

db $FD,OAMProp_Palette1|OAMProp_XFlip
db $AB,$AC

db $FF

DATA_DE2A:
db $00
db $FD,OAMProp_Palette1|OAMProp_XFlip|OAMProp_YFlip
db $EA
db $FF

DATA_DE2F:
db $00
db $FD,OAMProp_Palette1|OAMProp_XFlip|OAMProp_YFlip
db $E9
db $FF

DATA_DE34:
db $01
db $FD,OAMProp_Palette3
db $52,$53,$54,$FE
db $55,$56,$56,$57
db $5A,$5B,$5C,$5D
db $61,$62,$63,$64
db $58,$5E,$65
db $FF

DATA_DE4B:
db $01
db $FD,OAMProp_Palette3
db $52,$6A
db $54,$FE,$55,$6B,$56,$57,$6C,$6D
db $6E,$6F,$70,$71,$72,$73,$58,$5E
db $74
db $FF

DATA_DE62:
db $01
db $FD,OAMProp_Palette3
db $75,$53,$54
db $FE,$76,$56,$56,$57,$77,$78,$79
db $7A,$7B,$7C,$7D,$7E,$58,$5E,$7F
db $FF

DATA_DE79:
db $01
db $FD,OAMProp_Palette3
db $52,$6A,$54,$FE
db $76,$6B,$56,$57,$80,$81,$82,$83
db $85,$86,$87,$88,$58,$84,$89
db $FF

DATA_DE90:
db $02
db $FD,OAMProp_Palette2
db $59,$5F,$66,$FE,$60,$67
db $FF

DATA_DE9A:
db $02
db $FD,OAMProp_Palette2
db $4B,$4C,$4D
db $4E,$4F,$50
db $FF

DATA_DEA4:
db $00
db $FD,OAMProp_Palette2
db $CD,$CE,$CF
db $FD,OAMProp_Palette3
db $D0
db $FD,OAMProp_Palette2|OAMProp_XFlip
db $CD,$CE
db $FD,OAMProp_Palette2
db $D2
db $FD,OAMProp_Palette3
db $D3
db $FF

DATA_DEB8:
db $01
db $FD,OAMProp_Palette3
db $D1
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $D1
db $FF

DATA_DEC0:
db $03
db $FD,OAMProp_Palette2
db $C9,$CA
db $FF

DATA_DEC6:
db $00
db $FD,OAMProp_Palette2
db $D4
db $FF

DATA_DECB:
db $03
db $FD,OAMProp_Palette3
db $CB,$CC,$D5,$D6
db $FF

DATA_DED3:
db $00
db $FD,OAMProp_Palette2
db $D7,$D8,$D9
db $FD,OAMProp_Palette3
db $D0
db $FD,OAMProp_Palette2|OAMProp_XFlip
db $D7,$D8
db $FD,OAMProp_Palette2
db $DA
db $FD,OAMProp_Palette3
db $D3
db $FF

DATA_DEE7:
db $01
db $FD,OAMProp_Palette3
db $D1
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $D1
db $FF

DATA_DEEF:
db $03
db $FD,OAMProp_Palette2
db $C9,$CA
db $FF

DATA_DEF5:
db $00
db $FD,OAMProp_Palette2
db $D4
db $FF

DATA_DEFA:
db $03
db $FD,OAMProp_Palette3
db $CB,$CC,$D5,$D6
db $FF

DATA_DF02:
db $02
db $FD,OAMProp_Palette3
db $B3,$B4,$FE,$B9,$BA
db $FF

DATA_DF0B:
db $00
db $FD,OAMProp_Palette2
db $BF
db $FF

DATA_DF10:
db $01
db $FD,OAMProp_Palette3
db $FE,$AF,$B5
db $FD,OAMProp_Palette2
db $BB
db $FD,OAMProp_Palette3
db $FE,$B0,$B6,$BC,$AD
db $B1,$B7,$BD,$AE,$B2
db $B8,$BE,$C0
db $FF

DATA_DF29:
db $01
db $FD,OAMProp_Palette3
db $FE,$FE,$C1,$C2
db $C3,$C4,$C5,$C6
db $AD,$B1,$B7,$C7
db $AE,$B2,$B8,$BE
db $FE,$C8
db $FF

DATA_DF3F:
db $00
db $FD,OAMProp_Palette2
db $C9,$CA
db $FF

DATA_DF45:
db $00
db $FD,OAMProp_Palette3
db $DB,$DC
db $FF

DATA_DF4B:
db $00
db $FD,OAMProp_Palette2
db $DD,$DE
db $FD,OAMProp_Palette3
db $DF,$E0
db $FF

DATA_DF55:
db $01
db $FD,OAMProp_Palette3
db $D1
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $D1
db $FF

DATA_DF5D:
db $01
db $FD,OAMProp_Palette2|OAMProp_XFlip
db $DD
db $FD,OAMProp_Palette2
db $D4
db $FD,OAMProp_Palette0
db $E5
db $FD,OAMProp_Palette1
db $E9
db $FD,OAMProp_Palette2|OAMProp_XFlip
db $DE
db $FD,OAMProp_Palette3
db $E2
db $E6,$FE,$E1,$E3
db $FD,OAMProp_Palette1
db $E7,$FE
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $E0
db $FD,OAMProp_Palette1
db $E4,$E8
db $FF

DATA_DF80:
db $00
db $FD,OAMProp_Palette1
db $EA
db $FF

DATA_DF85:
db $01
db $FD,OAMProp_Palette1|OAMProp_XFlip
db $E9
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $E5
db $FD,OAMProp_Palette2|OAMProp_XFlip
db $D4
db $FD,OAMProp_Palette2
db $DD,$FE
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $E6,$E2
db $FD,OAMProp_Palette2
db $DE,$FE
db $FD,OAMProp_Palette1|OAMProp_XFlip
db $E7
db $FD,OAMProp_Palette3|OAMProp_XFlip
db $E3,$E1,$FE
db $FD,OAMProp_Palette1|OAMProp_XFlip
db $E8,$E4
db $FD,OAMProp_Palette3
db $E0
db $FF

DATA_DFAB:
db $00
db $FD,OAMProp_Palette1|OAMProp_XFlip
db $EA
db $FF

DATA_DFB0:
db $00
db $FD,OAMProp_Palette1
db $EA
db $FF

DATA_DFB5:
db $01
db $FD,OAMProp_Palette3
db $8A,$8B,$FE,$FE,$8C
db $FD,OAMProp_Palette2
db $8D,$8E,$FE,$8F,$90
db $91,$92,$93,$94,$95,$96
db $FF

DATA_DFCB:
db $01
db $FD,OAMProp_Palette3
db $97
db $FD,OAMProp_Palette2
db $98
db $FD,OAMProp_Palette3
db $99,$FE,$9A,$9B
db $9C
db $FF

DATA_DFDA:
db $01
db $FD,OAMProp_Palette3
db $52,$53,$54
db $FE,$55,$56,$56
db $FE,$5A,$5B,$5C
db $FE,$61,$62,$63
db $FF

DATA_DFED:
db $01
db $FD,OAMProp_Palette3
db $51
db $FF

DATA_DFF2:
db $02
db $FD,OAMProp_Palette3
db $68,$69
db $FF

DATA_DFF8:
db $00
db $FD,OAMProp_Palette3
db $9D,$9E
db $FF

DATA_DFFE:
db $01
db $FD,OAMProp_Palette0
db $F2,$F3
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $F2,$FE
db $FD,OAMProp_Palette0
db $F4,$F5
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $F4
db $FF

DATA_E00F:
db $00
db $FD,OAMProp_Palette0
db $EB
db $FF

DATA_E014:
db $00
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $EB
db $FF

DATA_E019:
db $00
db $FD,OAMProp_Palette0
db $F3
db $FF

DATA_E01E:
db $00
db $FD,OAMProp_Palette0
db $F5
db $FF

DATA_E023:
db $01
db $FD
db $00,$EC
db $FF

DATA_E028:
db $01
db $FD,OAMProp_Palette0|OAMProp_XFlip
db $EC
db $FF

DATA_E02D:
db $01
db $FD,OAMProp_Palette0
db $EF
db $FF

DATA_E032:
db $00
db $FD,OAMProp_Palette0
db $F0
db $FF

DATA_E037:
db $00
db $FD,OAMProp_Palette0
db $F1
db $FF

;unknown
UNUSED_E03C:
db $01
db $FD,OAMProp_Palette0
db $ED,$EE
db $FF

;Game A/B - Ducks
Layout_DuckGame_E042
dwb $2300
db 32|StripeImageCommand_Repeat
db $50

dwb $2320
db 32|StripeImageCommand_Repeat
db $50

dwb $2340
db 32|StripeImageCommand_Repeat 
db $50

dwb $2360
db 32|StripeImageCommand_Repeat 
db $50

dwb $2380
db 32|StripeImageCommand_Repeat 
db $50

dwb $23A0
db 32|StripeImageCommand_Repeat 
db $50

dwb $2240
db 32
db $3D,$3E,$3F,$40,$56,$57,$D1,$D2
db $3A,$3B,$3C,$3D,$3E,$3F,$40,$39
db $3A,$3B,$3C,$3D,$3E,$3F,$40,$D2
db $30,$31,$32,$33,$39,$3A,$3B,$3C

dwb $2260
db 32
db $95,$96,$97,$98,$58,$59,$5A,$5B
db $92,$93,$94,$95,$96,$97,$98,$91
db $92,$93,$94,$95,$96,$97,$98,$5B
db $34,$35,$36,$37,$91,$92,$93,$94

dwb $2280
db 32
db $46,$45,$48,$46,$46,$45,$46,$48
db $42,$43,$44,$46,$45,$48,$46,$41
db $42,$43,$44,$46,$45,$48,$46,$48
db $38,$45,$46,$46,$41,$42,$43,$44

dwb $22A0
db 32|StripeImageCommand_Repeat
db $46

;add some grass detail
dwb $22A4
db 1
db $48

dwb $22A8
db 1
db $47

dwb $22AA
db 1
db $48

dwb $22B0
db 1
db $47

dwb $22B2
db 1
db $48

dwb $22BA
db 1
db $48

dwb $22C0
db 32
db $4C,$4D,$4E,$4F,$49,$4A,$4B,$49
db $4C,$4D,$4E,$4F,$4D,$4E,$4F,$49
db $4A,$4B,$49,$4C,$4D,$4E,$4F,$49
db $49,$4A,$4B,$49,$4C,$4D,$4E,$4F

dwb $22E0
db 32
db $52,$50,$53,$50,$50,$51,$50,$50
db $52,$50,$53,$50,$50,$53,$50,$50
db $51,$50,$50,$52,$50,$53,$50,$50
db $50,$51,$50,$50,$52,$50,$53,$50

dwb $2300
db 1
db $52

dwb $2302
db 2
db $54,$52

dwb $230A
db 2
db $54,$52

dwb $230D
db 2
db $54,$52

dwb $230F                                                   ;could've combined this with the previous write to save 3 bytes (by drawing 4 at once)
db 2
db $54,$52

dwb $2315
db 2
db $54,$52

dwb $231E
db 2
db $54,$52

dwb $21F9
db 3
db $28,$29,$2A

dwb $2219
db 3
db $2B,$46,$2C

dwb $2238
db 4
db $2D,$2E,$46,$2F

dwb $2081
db 4
db $5C,$5D,$5E,$5F

dwb $20A1
db 5
db $60,$61,$46,$62,$63

dwb $20C1
db 5
db $64,$65,$66,$67,$68

dwb $20E3
db 5
db $69,$74,$75,$76,$6A

dwb $2103
db 5
db $6B,$6C,$7C,$6D,$6E

dwb $2123
db 5
db $6F,$70,$71,$72,$73

dwb $2140
db 7
db $74,$75,$76,$77,$78,$79,$7A

dwb $2160
db 9
db $7B,$7C,$7D,$7E,$7F,$80,$5D,$5E,$5F

dwb $2181
db 9
db $81,$82,$83,$84,$60,$61,$46,$62,$63

dwb $21A3
db 7
db $85,$86,$64,$87,$88,$67,$68

dwb $21C3
db 4
db $89,$8A,$8B,$8C

dwb $21E4
db 2
db $8D,$8E

dwb $2204
db 2
db $8F,$90

dwb $2224
db 2
db $8F,$55

dwb $2303
db 2
db $1B,$27

dwb $2323
db 27|StripeImageCommand_Repeat
db $E3

dwb $2322
db $06
db $E2,$E3,$E3,$E3,$E4,$E2

dwb $2336
db 2
db $E4,$E2

dwb $233E
db 1
db $E4

dwb $2348
db 22|StripeImageCommand_Repeat
db $B7

dwb $2342
db 6
db $E5,$D9,$D9,$D9,$E7,$E5

dwb $234C
db 10|StripeImageCommand_Repeat
db $D6

dwb $2356
db 2
db $E7,$E5

dwb $235E
db 1
db $E7

dwb $2358
db 6|StripeImageCommand_Repeat
db $00

dwb $2368
db 22|StripeImageCommand_Repeat
db $B7

dwb $2362
db 6
db $E5,$DA,$DB,$DC,$E7,$E5

dwb $2376
db 2
db $E7,$E5

dwb $237E
db 1
db $E7

dwb $2379
db 5
db $1C,$0C,$18,$1B,$0E

dwb $2383
db 27|StripeImageCommand_Repeat
db $E9

dwb $2382
db 1
db $E8

dwb $2386
db 2
db $EA,$E8

dwb $2396
db 2
db $EA,$E8

dwb $239E
db 1
db $EA

dwb $23C0
db 32|StripeImageCommand_Repeat
db $00

dwb $23CA
db 4
db $CC,$FF,$FF,$FF

dwb $23D2
db 4
db $CC,$FF,$FF,$FF

dwb $23E0
db 8|StripeImageCommand_Repeat
db $50

dwb $23E1
db 1
db $40

dwb $23E8
db 8|StripeImageCommand_Repeat
db $A5

dwb $23F0
db 8
db $AA,$AA,$AA,$FA,$FA,$BA,$FA,$BA

dwb $23F8
db 8|StripeImageCommand_Repeat
db $0A

dwb $2348
db 3
db $11,$12,$1D

db StripeImageWriteCommand_Stop

Layout_ClayShooting_E26C:
dwb $2220
db 32|StripeImageCommand_Repeat
db $B6

dwb $2240
db 32|StripeImageCommand_Repeat
db $B5

dwb $2260
db 32|StripeImageCommand_Repeat
db $B5

dwb $2280
db 32|StripeImageCommand_Repeat
db $B5

dwb $22A0
db 32|StripeImageCommand_Repeat
db $B5

dwb $22C0
db 32|StripeImageCommand_Repeat
db $B5

dwb $22E0
db 32|StripeImageCommand_Repeat
db $B5

dwb $2300
db 32|StripeImageCommand_Repeat
db $B5

dwb $2185
db 5
db $AC,$AD,$AE,$C1,$C2

dwb $21A4
db 7
db $AF,$B0,$B5,$B5,$C3,$C4,$C5

dwb $21B0
db 4
db $EC,$B4,$B8,$B9

dwb $21C2
db 11
db $B1,$B2,$B5,$B5,$B5,$B5,$B5,$C6
db $C7,$C8,$C9

dwb $21CE
db 15
db $CA,$B4,$B5,$B5,$B5,$ED,$BA,$BB
db $BC,$B3,$EB,$B0,$BE,$BB,$BF

dwb $21E2
db 25|StripeImageCommand_Repeat
db $B5

dwb $21E0
db 2
db $B3,$B4

dwb $21EB
db 4
db $CB,$C4,$CC,$CD

dwb $21F5
db 1
db $BD

dwb $21FB
db 5
db $BD,$CB,$C4,$C8,$BB

dwb $2200
db 29|StripeImageCommand_Repeat
db $B5

dwb $220D
db 3
db $CE,$CF,$D0

dwb $221D
db 3
db $C3,$C0,$C0

dwb $2260
db 6
db $99,$9A,$9B,$9C,$99,$9A

dwb $2280
db 6
db $9D,$9E,$9F,$A0,$9D,$9E

dwb $22A0
db 6
db $A1,$A2,$A3,$A4,$A1,$A2

dwb $22C0
db 6
db $A5,$A6,$A5,$A7,$A5,$A6

dwb $2247
db 4|StripeImageWriteCommand_DrawVert
db $9B,$9F,$A3,$A5

dwb $2248
db 4|StripeImageWriteCommand_DrawVert
db $9C,$A0,$A4,$A6

dwb $224A
db 2
db $A8,$A9

dwb $226A
db 2
db $AA,$AB

dwb $2258
db 5
db $A8,$A9,$A8,$A8,$A8

dwb $2277
db 6
db $A8,$AA,$AB,$AA,$AA,$AA

dwb $2274
db 2|StripeImageWriteCommand_DrawVert
db $A9,$AB

dwb $2297
db 1
db $AA

dwb $22BA
db 4
db $99,$9A,$9B,$9C

dwb $22DA
db 4
db $9D,$9E,$9F,$A0

dwb $22FA
db 4
db $A1,$A2,$A3,$A4

dwb $2320
db 32|StripeImageCommand_Repeat
db $C0

dwb $2340
db 32|StripeImageCommand_Repeat
db $C0

dwb $2360
db 32|StripeImageCommand_Repeat
db $C0

dwb $2380
db 32|StripeImageCommand_Repeat
db $C0

dwb $23A0
db 32|StripeImageCommand_Repeat
db $C0

dwb $2300
db 32|StripeImageCommand_Repeat
db $DD

dwb $2308
db 16|StripeImageCommand_Repeat
db $DF

dwb $2307
db 1
db $DE

dwb $2318
db 1
db $E0

dwb $2328
db 22|StripeImageCommand_Repeat
db $E3

dwb $2348
db 22|StripeImageCommand_Repeat
db $B7

dwb $2368
db 22|StripeImageCommand_Repeat
db $B7

dwb $2388
db 22|StripeImageCommand_Repeat
db $E9

dwb $2358
db 6|StripeImageCommand_Repeat
db $00

dwb $2322
db 6
db $E2,$E3,$E3,$E3,$E4,$E2

dwb $2342
db 6
db $E5,$D9,$D9,$D9,$E7,$E5

dwb $2362
db $06
db $E5,$DA,$DB,$DC,$E7,$E5

dwb $2382
db $06
db $E8,$E9,$E9,$E9,$EA,$E8

dwb $234C
db 10|StripeImageCommand_Repeat
db $D4

dwb $2303
db 2
db $1B,$27

dwb $2336
db 4|StripeImageWriteCommand_DrawVert
db $E4,$E7,$E7,$EA

dwb $2337
db 4|StripeImageWriteCommand_DrawVert
db $E2,$E5,$E5,$E8

dwb $233E
db 4|StripeImageWriteCommand_DrawVert
db $E4,$E7,$E7,$EA

dwb $2379
db 5
db $1C,$0C,$18,$1B,$0E

dwb $23C0
db 32|StripeImageCommand_Repeat
db $00

dwb $23C8
db 16|StripeImageCommand_Repeat
db $FF

dwb $23E0
db 8|StripeImageCommand_Repeat
db $50

dwb $23E8
db 8|StripeImageCommand_Repeat
db $55

dwb $23F0
db 8
db $AA,$AA,$AA,$FA,$FA,$BA,$FA,$BA

dwb $23F8
db 8|StripeImageCommand_Repeat
db $0A

dwb $2348
db 3
db $11,$12,$1D

db StripeImageWriteCommand_Stop

Layout_TitleScreen_E404:
dwb $2064
db 19|StripeImageCommand_Repeat 
db $B7

dwb $2084
db 19|StripeImageCommand_Repeat
db $B7

dwb $20A4
db 19|StripeImageCommand_Repeat
db $B7

dwb $20C4
db 19|StripeImageCommand_Repeat
db $B7

dwb $20E4
db 19|StripeImageCommand_Repeat
db $B7

dwb $2086
db 2|StripeImageWriteCommand_DrawVert
db $F5,$F4

dwb $2067
db 5|StripeImageWriteCommand_DrawVert
db $F0,$B7,$B7,$B7,$F1

dwb $2068
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $206B
db 3|StripeImageWriteCommand_DrawVert
db $24,$24,$F4

dwb $20E9
db 4
db $F3,$B7,$B7,$F1

dwb $206D
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $206E
db 4
db $F2,$B7,$B7,$F0

dwb $20EE
db 4
db $F3,$B7,$B7,$F1

dwb $2090
db 2
db $F5,$F6

dwb $20B0
db 2
db $F4,$F7

dwb $2072
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $2075
db 5|StripeImageWriteCommand_DrawVert
db $24,$F8,$B7,$F9,$24

dwb $2096
db 2|StripeImageWriteCommand_DrawVert
db $F1,$F0

dwb $2124
db 24|StripeImageCommand_Repeat
db $FB

dwb $2149
db 19|StripeImageCommand_Repeat
db $B7

dwb $2169
db 18|StripeImageCommand_Repeat 
db $B7

dwb $2189
db 18|StripeImageCommand_Repeat
db $B7

dwb $21A9
db 18|StripeImageCommand_Repeat
db $B7

dwb $21C9
db 18|StripeImageCommand_Repeat
db $B7

dwb $214B
db $85
db $24,$FA,$B7,$24,$24

dwb $214D
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $21CE
db 4
db $F3,$B7,$B7,$F1

dwb $2150
db 3|StripeImageWriteCommand_DrawVert
db $24,$24,$F4

dwb $2152
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $2155
db $85
db $24,$F0,$B7,$F9,$24

dwb $2157
db 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $2178
db 4|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $217B
db 4|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
db $24

dwb $2228
db 15
db $10,$0A,$16,$0E,$24,$0A,$24,$24
db $24,$01,$24,$0D,$1E,$0C,$14

dwb $2268
db 16
db $10,$0A,$16,$0E,$24,$0B,$24,$24
db $24,$02,$24,$0D,$1E,$0C,$14,$1C

dwb $22A8
db $16
db $10,$0A,$16,$0E,$24,$0C,$24,$24
db $24,$0C,$15,$0A,$22,$24,$1C,$11
db $18,$18,$1D,$12,$17,$10

dwb $2307
db 11
db $1D,$18,$19,$24,$1C,$0C,$18,$1B
db $0E,$24,$27

dwb $2345
db 22
db $25,$01,$09,$08,$04,$24,$17,$12
db $17,$1D,$0E,$17,$0D,$18,$24,$0C
db $18,$EE,$15,$1D,$0D,$EF

dwb $23C0
db 32|StripeImageCommand_Repeat
db $00

dwb $23E0
db 2|StripeImageCommand_Repeat
db $55

dwb $23E2
db 6|StripeImageCommand_Repeat
db $FF

dwb $23EA
db 6|StripeImageCommand_Repeat
db $FF

dwb $23F0
db 8|StripeImageCommand_Repeat
db $5A

dwb $23F8
db 8|StripeImageCommand_Repeat
db $00

dwb $23E1
db 1
db $55

dwb $23E9
db 1
db $55

db StripeImageWriteCommand_Stop

;palettes! i think
POINTERS_E532:
dw Palette_TitleScreen_E540
dw Palette_DuckGame_E558
dw Palette_ClayShooting_E57C
dw Palette_ZapperShot1_E5A0
dw Palette_ZapperShot2_E5A9
dw Palette_FlyAwayBackgroundRestore_E5C7
dw Palette_FlyAwayDog_E5B4

Palette_TitleScreen_E540:
dwb $3F00
db 16
db $0F,$2C,$27,$0F,$0F,$0F,$30,$30
db $0F,$0F,$2A,$2A,$0F,$0F,$27,$27

dwb $3F10
db 16|StripeImageCommand_Repeat
db $0F

db StripeImageWriteCommand_Stop

Palette_DuckGame_E558:
dwb $3F00
db 32
db $21,$07,$29,$0A,$21,$30,$29,$0A
db $21,$0F,$29,$18,$21,$0F,$30,$16

db $21,$30,$0A,$0F,$21,$30,$26,$0F
db $21,$30,$17,$0F,$21,$07,$17,$0F

db StripeImageWriteCommand_Stop

Palette_ClayShooting_E57C:
dwb $3F00
db 32
db $2C,$29,$19,$09,$2C,$07,$29,$1A
db $2C,$0F,$29,$10,$2C,$0F,$30,$16

db $2C,$30,$0F,$0F,$2C,$30,$16,$07
db $2C,$30,$17,$0F,$2C,$07,$17,$0F

db StripeImageWriteCommand_Stop

;shroud everything in dark. this is only really used for the title screen, to make zapper shot activate selected game
Palette_ZapperShot1_E5A0:
dwb $3F00
db 32|StripeImageCommand_Repeat
db $0F

dwb $3F03
db 1                                                        ;and set BG palette 0 color 4 as white. everything will be blank at this point, which means shooting anywhere on-screen will trigger zapper detection
db $30

db StripeImageWriteCommand_Stop

;keep everything in dark. used to detect sprites with zapper
Palette_ZapperShot2_E5A9:
dwb $3F00
db 32|StripeImageCommand_Repeat
db $0F

dwb $3F11
db 3                                                        ;and set sprite palette 0 colors 2-4 as white for an understandable reason (zapper detection)
db $30,$30,$30

db StripeImageWriteCommand_Stop

;used for when the dog pops up, only to laugh at you.
Palette_FlyAwayDog_E5B4:
dwb $3F10
db $10
db $21,$30,$0A,$0F,$21,$30,$26,$0F
db $21,$30,$17,$0F,$21,$07,$17,$0F

;used to restore background palette after it changes for "FLY AWAY"
Palette_FlyAwayBackgroundRestore_E5C7:
dwb $3F00
db $10
db $21,$07,$29,$0A,$21,$30,$29,$0A
db $21,$0F,$29,$18,$21,$0F,$30,$16

db StripeImageWriteCommand_Stop

;VRAM location of the score counter
ScorePointerVRAMLoc_E5DB:
dwb $2358

;unknown
db $06,$00

;first byte is unknown. the rest are score values
;by default all top scores are the same 
DefaultTopScores_E5DF:
db $00,$01,$20,$00
db $00,$01,$20,$00
db $00,$01,$20,$00

;initial duck values. (to be broken down in the same way as in Mario Bros. NES)
DuckEntity_InitialVariables_E5EB:
db $01,$01,$A8,$80,$00,$00,$00,$3F
db $01,$00,$03,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$03,$00,$00,$00,$00

POINTERS_E60B:
dw DATA_ED76
dw DATA_ED98
dw DATA_EDB0
dw DATA_EDBC
dw DATA_EDD4
dw DATA_EDFA
dw DATA_EE1A
dw DATA_EE34
dw DATA_EE4C
dw DATA_EE68
dw DATA_EE82
dw DATA_EE96
dw DATA_EEB8
dw DATA_EED0
dw DATA_EEF4
dw DATA_EF0E
dw DATA_EF2A
dw DATA_EF2D
dw DATA_EF30
dw DATA_EF33
dw DATA_EF36
dw DATA_EF39
dw DATA_EF3C
dw DATA_EF3F
dw DATA_EF42
dw DATA_EF45
dw DATA_EF48
dw DATA_EF4B
dw DATA_EF4E
dw DATA_EF51
dw DATA_EF54
dw DATA_EF57

;offsets for tables!!
DATA_E64B:
db DATA_E661-DATA_E661
db DATA_E664-DATA_E661
db DATA_E671-DATA_E661
db DATA_E678-DATA_E661
db DATA_E685-DATA_E661
db DATA_E688-DATA_E661
db DATA_E695-DATA_E661
db DATA_E69C-DATA_E661
db UNUSED_E6A9-DATA_E661
db DATA_E6AC-DATA_E661
db DATA_E6B9-DATA_E661
db DATA_E6C0-DATA_E661
db DATA_E6CD-DATA_E661
db DATA_E6D0-DATA_E661
db DATA_E6DD-DATA_E661
db DATA_E6E4-DATA_E661
db DATA_E6F1-DATA_E661
db UNUSED_E6F6-DATA_E661
db DATA_E6F9-DATA_E661
db DATA_E6FC-DATA_E661
db DATA_E6FF-DATA_E661
db UNUSED_E702-DATA_E661

DATA_E661:
db $FF,$00
db $AA

DATA_E664:
db $FF,$01
db $FF,$00
db $FF,$00
db $FF,$01
db $FF,$00
db $00,$00
db $AA

DATA_E671
db $FF,$01
db $FF,$01
db $00,$00
db $AA

DATA_E678
db $00,$01
db $FF,$01
db $00,$01
db $FF,$01
db $00,$01
db $00,$00
db $AA

DATA_E685:
db $00,$01
db $AA

DATA_E688:
db $00,$01
db $01,$01
db $00,$01
db $01,$01
db $00,$01
db $00,$00
db $AA

DATA_E695:
db $01,$01
db $01,$01
db $00,$00
db $AA

DATA_E69C:
db $01,$01
db $01,$00
db $01,$00
db $01,$01
db $01,$00
db $00,$00
db $AA

UNUSED_E6A9:
db $01,$00
db $AA

DATA_E6AC:
db $01,$FF
db $01,$00
db $01,$00
db $01,$FF
db $01,$00
db $00,$00
db $AA

DATA_E6B9:
db $01,$FF
db $01,$FF
db $00,$00
db $AA

DATA_E6C0:
db $00,$FF
db $01,$FF
db $00,$FF
db $01,$FF
db $00,$FF
db $00,$00
db $AA

DATA_E6CD:
db $00,$FF
db $AA

DATA_E6D0:
db $00,$FF
db $FF,$FF
db $00,$FF
db $FF,$FF
db $00,$FF
db $00,$00
db $AA

DATA_E6DD:
db $FF,$FF
db $FF,$FF
db $00,$00
db $AA

DATA_E6E4:
db $FF,$FF
db $FF,$00
db $FF,$00
db $FF,$FF
db $FF,$00
db $00,$00
db $AA

DATA_E6F1:
db $02,$01
db $02,$FF
db $AA

UNUSED_E6F6:
db $FF,$FE
db $AA

DATA_E6F9:
db $FE,$FF
db $AA

DATA_E6FC:
db $FE,$00
db $AA

DATA_E6FF
db $FE,$01
db $AA

UNUSED_E702:
db $FF,$02
db $AA

DATA_E705:
db $02,$00,$02,$01,$04,$02,$FE

DATA_E70C:
db $02,$03,$02,$04,$04,$05,$FE

DATA_E713:
db $14,$09
db $FF,$06,$01

DATA_E718:
db $04,$0A,$04,$0B,$FE

DATA_E71D:
db $02,$06,$02,$07,$04,$08,$FE

;duck palettes
DuckPalettes_E724:
;black/green duck
db $21,$30,$0A,$0F
db $21,$30,$26,$0F

;blue/purple duck
db $21,$30,$14,$02
db $21,$30,$26,$02

;red
db $21,$30,$0F,$05
db $21,$30,$26,$05

DATA_E73C:
db $04,$08

;unknown
db $0C

db $08,$0C,$10,$08,$0C,$10,$0C,$10
db $14,$10,$14,$18,$10,$14,$18
db $14,$18,$1C,$14,$1C,$1C,$18,$1C
db $1C,$1C,$1C,$20

DATA_E75A:
db $10,$14,$14,$18,$18,$1C,$1C,$20
db $20,$24,$24,$28

;Duck Color configurations. Low nibble is the first duck's palette index, high nibble is for the second one
DuckColorConfigurations_E766:
db $00                                                      ;both green
db $01                                                      ;first green, second purple
db $10                                                      ;first purple, second green
db $11                                                      ;both purple
db $12                                                      ;first purple, second red
db $20                                                      ;first red, second green
db $21                                                      ;first red, second purple
db $22                                                      ;both red

;some initial variables for the dog.
DogEntity_InitialVariables_E76E:
db $01,$01,$AC,$18,$00,$00,$00,$BF
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$60,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00

DATA_E78E:
db $06,$0C,$06,$0D,$06,$0E,$06,$0F,$FE

;unknown
db $00

DATA_E798:
db $08,$0C,$08,$10,$08,$0C,$08,$10
db $08,$0C,$08,$10,$FF,$02,$01

DATA_E7A7:
db $10
db $11,$FF,$08,$01

DATA_E7AC:
db $90,$03,$12,$83
db $01,$12,$83,$01,$12,$83,$01,$12
db $83,$01,$12,$82,$01,$12,$82,$01
db $12,$82,$01,$12,$82,$01,$12,$81
db $01,$12,$82,$01,$12,$81,$01,$12
db $81,$01,$12,$81,$01,$12,$81,$01
db $12,$81,$01,$12,$81,$01,$12,$84
db $01,$13,$00,$01,$13,$81,$01,$13
db $00,$01,$13,$81,$01,$13,$00,$01
db $13,$00,$01,$13,$00,$01,$13,$81
db $01,$13,$FD,$00,$01,$13,$00,$01
db $13,$00,$01,$13,$00,$01,$13,$01
db $01,$13,$00,$01,$13,$01,$01,$13
db $00,$01,$13,$01,$01,$13,$01,$01
db $13,$01,$01,$13,$02,$01,$13,$02
db $01,$13,$02,$01,$13,$03,$01,$13
db $03,$01,$13,$04,$00,$13,$04,$00
db $13,$05,$00,$13,$05,$00,$13,$05
db $00,$13,$05,$00,$13,$05,$00,$13
db $05,$00,$13,$FF,$0E,$00

DATA_E846:
db $04,$81
db $16,$04,$81,$17,$04,$81,$16,$04
db $81,$17,$04,$81,$16,$04,$81,$17
db $04,$81,$16,$04,$81,$17,$04,$81
db $16,$04,$81,$17,$04,$80,$16,$04
db $80,$17,$04,$80,$16,$04,$80,$17
db $04,$80,$16,$04,$80,$17,$04,$80
db $16,$04,$80,$17,$04,$02,$16,$04
db $02,$17,$04,$02,$16,$04,$02,$17
db $04,$02,$16,$04,$02,$17,$04,$02
db $16,$FF,$0F,$20

DATA_E894:
db $14,$82,$14,$10
db $00,$14,$14,$02,$14,$14,$02,$14
db $FF,$0F,$20

DATA_E8A3:
db $14,$82,$15,$10,$00,$15,$14,$02
db $15,$14,$02,$15,$FF,$0F,$20

DATA_E8B2:
db $04,$81,$16,$04,$81,$17
db $04,$81,$16,$04,$81,$17,$04,$81
db $16,$04,$81,$17,$04,$81,$16,$04
db $81,$17,$04,$81,$16,$04,$81,$17
db $04,$80,$16,$04,$80,$17,$04,$80
db $16,$FC

ClayPigeonEntity_InitialVariables_E8DA:
db $01,$02,$00,$00,$00,$00,$00,$4F
db $00,$00,$00,$00,$00,$00,$00,$01
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$02,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $00,$00,$00,$00,$00,$00,$00,$00
db $F9,$FE,$FB,$FE,$FF,$FE,$FF,$FA
db $FB,$FA,$F9,$FA,$00,$00,$00,$00
db $FA,$FD,$FB,$FD,$FB,$FD,$FC,$FD
db $FC,$FB,$FB,$FB,$FB,$FB,$FA,$FB

DATA_E92A:
db $18,$18,$19,$1A,$1A,$1B,$1C,$1D
db $1E,$1E,$1F,$1F,$20,$20,$21,$21
db $22,$22,$22,$22,$23,$23,$23,$23

;unknown
db $23,$23

;clay pigeon's zapper shape, depending on its distance
ClayPigeonZapperShapes_E944:
db $00,$00,$00,$01,$01,$01,$02,$02
db $02,$02,$03,$03,$03,$03,$04,$04
db $04,$04,$04,$05,$05,$05,$05,$05
db $05,$05,$05,$05,$05,$05

;unknown
db $05,$05,$05,$05,$05,$05

DATA_E968:
db $00,$00,$C0,$15,$1E,$2C
db $01,$00,$C0,$0A,$1E,$30
db $03,$00,$D0,$10,$1E,$25
db $04,$00,$C0,$00,$1C,$30
db $06,$00,$C0,$0F,$1C,$30
db $08,$00,$C0,$F6,$1C,$30
db $09,$00,$C0,$0C,$1C,$30
db $0A,$00,$C0,$F4,$1C,$30
db $0C,$00,$C0,$F4,$1E,$2D
db $0E,$00,$C0,$08,$1C,$30
db $0A,$00,$C0,$00,$1D,$30
db $11,$00,$B8,$EE,$20,$33
db $13,$00,$C8,$F0,$1C,$2A
db $04,$80,$C8,$F7,$1C,$2D
db $0A,$80,$C8,$0B,$1C,$2D
db $0F,$80,$C6,$F3,$21,$26

;note: the seventh byte of each entry is unused for some reason.
DATA_E9C8:
db $14,$14,$10,$10,$10,$08,$04,$00 
db $18,$14,$14,$10,$0C,$08,$04,$00
db $1C,$18,$18,$14,$10,$0C,$08,$04
db $20,$1C,$18,$14,$10,$0C,$08,$04
db $24,$20,$1C,$18,$14,$0C,$08,$04
db $28,$24,$20,$1C,$14,$10,$0C,$08
db $2C,$28,$24,$20,$18,$10,$0C,$08

DATA_EA00:
db $01,$01,$01,$01,$02,$01,$01,$01
db $02,$01,$02,$01,$02,$02,$02,$01
db $02,$02,$02,$02,$03,$02,$03,$02
db $03,$03,$03,$03,$04,$03,$04,$03
db $04,$04,$04,$04,$05,$05,$05,$05
db $06,$06,$06,$06,$07,$07,$07,$07

DATA_EA30:
db $ED,OAMProp_Palette0|OAMProp_XFlip
db $ED,OAMProp_Palette0|OAMProp_XFlip
db $ED,OAMProp_Palette0|OAMProp_XFlip|OAMProp_YFlip
db $ED,OAMProp_Palette0|OAMProp_YFlip
db $ED,OAMProp_Palette0
db $ED,OAMProp_Palette0

db $ED,OAMProp_Palette0                                     ;\unused?
db $ED,OAMProp_Palette0                                     ;/

db $EE,OAMProp_Palette0|OAMProp_XFlip
db $EE,OAMProp_Palette0|OAMProp_XFlip
db $EE,OAMProp_Palette0|OAMProp_XFlip
db $EE,OAMProp_Palette0|OAMProp_XFlip
db $EE,OAMProp_Palette0
db $EE,OAMProp_Palette0
db $EE,OAMProp_Palette0
db $EE,OAMProp_Palette0

DATA_EA50:
db $06,$05,$04,$03,$03,$02,$03,$03
db $02,$02,$02,$02,$02,$01,$01,$02
db $01,$01,$01,$01,$01,$01,$01,$00
db $01,$01,$01,$01,$00,$01,$01,$01
db $00,$01,$01,$00,$01,$00,$01,$00
db $BB,$01,$00,$01,$00,$BB,$01,$00
db $01,$00,$BB,$01,$00,$01,$BB,$00
db $01,$BB,$00,$00,$BB,$00,$AA

DATA_EA8F:
db $02
db $02,$01,$02,$02,$01,$01,$01,$01
db $01,$00,$01,$00,$01,$00,$01,$00
db $01,$BB,$00,$00,$01,$BB,$00,$00
db $01,$BB,$00,$00,$BB,$01,$00,$00
db $BB,$01,$00,$BB,$00,$00,$BB,$BB
db $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB
db $BB,$AA

DATA_EAC2:
db $01,$01,$00,$01,$01,$01,$00,$01
db $00,$01,$00,$00,$01,$00,$00,$00
db $00,$01

;unknown
db $00

;known
db $00,$00,$00

;unknown
db $00

;known
db $01,$00,$00

;unknown
db $00

;known
db $00,$00

;unknown
db $00

;known
db $01,$00,$00

;unknown
db $00

;known
db $00,$00

;unknown
db $00

;known
db $00,$00

;unknown
db $00,$00,$00,$00,$00,$00,$00,$00
db $00

DATA_EAF2:
db $00,$06,$00,$FF

;unknown
db $02,$05,$02,$FF


db $08,$04,$06,$FF,$0E,$04,$07,$FF
db $12,$05,$08,$FF,$14,$04,$0A,$FF
db $FF,$00,$00,$02,$FF,$00,$00,$04
db $FF,$00,$00,$06,$FF,$00,$00,$0A
db $FF,$00,$00,$10,$FF,$00,$00,$14

DATA_EB22:
db $02,$04,$06,$0A,$0C,$0E

DATA_EB28:
db $01,$03,$05,$07,$09,$0B,$0D,$0F

;this is used to draw different sprite shapes for zapper detection (typically rectangles)
ZapperShapeSpriteGFXPointers_EB30:
dw DATA_EB4A
dw DATA_EB5D
dw DATA_EB70
dw DATA_EB7D
dw DATA_EB86
dw DATA_EB8F
dw UNUSED_EB92                                              ;unused
dw UNUSED_EB92                                              ;unused
dw UNUSED_EB92                                              ;unused
dw DATA_EB95
dw DATA_EBB6
dw DATA_EBC9
dw UNUSED_EBDC                                              ;unused

;x-offset, y-offset
;$AA - terminator command
DATA_EB4A:
db $F4,$F4
db $F4,$FC
db $F4,$04
db $FC,$F4
db $FC,$FC
db $FC,$04
db $04,$F4
db $04,$FC
db $04,$04
db $AA

DATA_EB5D:
db $F7,$F5
db $F7,$FD
db $F7,$03
db $FF,$F5
db $FF,$FD
db $FF,$03
db $01,$F5
db $01,$FD
db $01,$03
db $AA

DATA_EB70:
db $F9,$F7
db $F9,$FF
db $F9,$01
db $FF,$F7
db $FF,$FF
db $FF,$01
db $AA

DATA_EB7D:
db $FA,$F8
db $FA,$00
db $FE,$F8
db $FE,$00
db $AA

DATA_EB86:
db $FA,$FA
db $FA,$FE
db $FE,$FA
db $FE,$FE
db $AA

DATA_EB8F:
db $FC,$FC
db $AA

;unknown. duplicate of the previous entry?
UNUSED_EB92:
db $FC,$FC
db $AA

DATA_EB95:
db $F0,$F0
db $F0,$F8
db $F0,$00
db $F0,$08
db $F8,$F0
db $F8,$F8
db $F8,$00
db $F8,$08
db $00,$F0
db $00,$F8
db $00,$00
db $00,$08
db $08,$F0
db $08,$F8
db $08,$00
db $08,$08
db $AA

DATA_EBB6:
db $F4,$F5,$F4,$FD,$F4,$03,$FC,$F5
db $FC,$FD,$FC,$03,$04,$F5,$04,$FD
db $04,$03,$AA

DATA_EBC9:
db $F5,$F7
db $F5,$FF
db $F5,$01
db $FD,$F7
db $FD,$FF
db $FD,$01
db $03,$F7
db $03,$FF
db $03,$01
db $AA

UNUSED_EBDC:
db $F6,$F8
db $F6,$00
db $FE,$F8
db $FE,$00
db $02,$F8
db $02,$00
db $AA

;How much score is awarded for getting perfect hit amount. This is tens thousands and hundreds thousands 
PerfectScore_TensThousands_EBE9:
db $01,$01,$02,$03

;same as above, but hundreds and thousands
PerfectScore_Thousands_EBED:
db $00,$50,$00,$00

;what kind of score reward to give, depending on the duck color and difficulty
DuckScoreRewardIndexes_EBF1:
db ScoreReward_500,ScoreReward_1000,ScoreReward_1500
db ScoreReward_800,ScoreReward_1600,ScoreReward_2400
db ScoreReward_1000,ScoreReward_2000,ScoreReward_3000

;score values from sprite score pop-ups.
ScoreSpriteRewards_EBFA:
db $05,$08,$10,$15,$16,$20,$24,$30

;amount of hits required to clear the stage
;$FF - infinitely repeat previous value
RequiredHitAmountPerRound_EC02:
db $06,$06,$06,$06,$06,$06,$06,$06                          ;rounds 1-8
db $06,$06,$07,$07,$08,$08,$09,$09                          ;rounds 9-16
db $09,$09,$09,$0A,$FF                                      ;rounds 17-20 and beyond

DATA_EC17:
db $00,$08,$10,$18,$18,$20,$20,$28

DATA_EC1F:
db $28,$01,$80,$00,$00,$AA,$01,$40
db $02,$10,$03,$08,$02,$10,$03,$08
db $02,$10,$03,$08,$02,$10,$03,$08
db $00,$00,$AA

;DATA POINTERS, POG!!!!!
;messages
MessageTilemapPointers_EC3A:
dw Message_ROUND_EC4A
dw Message_GO_EC70
dw Message_GO_Blank_EC82
dw Message_GOOD_EC8B
dw Message_PERFECT_ECB1
dw Message_FLY_AWAY_ECE6
dw Message_PAUSE_ED07
dw Message_GAME_OVER_ED3C

;format:
;first byte - VRAM location, low byte (the message's high byte is hardcoded to $20)
;second byte - amount of tile to load into buffer transfer
;the rest are buffer transfer tile data:
;first byte - amount of rows to draw and amount of tiles on each row. high nibble - rows, low nibble - tile amount
;the rest are tiles to draw
;then amount of rows and tiles on said rows, repeat until done.
Message_ROUND_EC4A:
db $CD
db @End-@Message

@Message
db $57
db $FF,$13,$13,$13,$13,$13,$1A
db $D8,"ROUND"-$37,$21
db $D8,$B7,$B7,$B7,$B7,$B7,$21
db $D8,$B7,$B7,$B7,$B7,$B7,$21
db $23,$FC,$FC,$FC,$FC,$FC,$FD

@End

Message_GO_EC70:
db $EE
db @End-@Message

@Message
db $35
db $B7,$B7,$B7,$B7,$B7
db $B7,"GO"-$37,$FE,$B7
db $B7,$B7,$B7,$B7,$B7

@End

;used for GO!! blinking
Message_GO_Blank_EC82:
db $EF
db @End-@Message-3

@Message
db $23
db $B7,$B7,$B7
db $B7,$B7,$B7                                              ;second row is unused for some reason, despite setting two rows with 3 tiles each. it doesn't seem to lead to any glitches at least.

@End

Message_GOOD_EC8B:
db $CD
db @End-@Message

@Message
db $57
db $FF,$13,$13,$13,$13,$13,$1A
db $D8,$B7,$B7,$B7,$B7,$B7,$21
db $D8,"GOOD"-$37,$FE,$21
db $D8,$B7,$B7,$B7,$B7,$B7,$21
db $23,$FC,$FC,$FC,$FC,$FC,$FD

@End

Message_PERFECT_ECB1:
db $CC
db @End-@Message

@Message
db $5A
db $FF,$13,$13,$13,$13,$13,$13,$13,$13,$1A
db $D8,"PERFECT"-$37,$FE,$21
db $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
db $D8,$B7,$B7,$B7,$00,$00,$00,$B7,$B7,$21
db $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End

Message_FLY_AWAY_ECE6:
db $EC
db @End-@Message

@Message
db $3A
db $FF,$13,$13,$13,$13,$13,$13,$13,$13,$1A
db $D8,"FLY"-$37,$B7,"AWAY"-$37,$21
db $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End

;for some reason, the tilemap for the pause message is wider than its actual appearance, there are blank tiles on the right and left. was it wider before?
Message_PAUSE_ED07:
db $CC
db @End-@Message

@Message
db $5A
db $24,$FF,$13,$13,$13,$13,$13,$1A,$24,$24
db $24,$D8,$B7,$B7,$B7,$B7,$B7,$21,$24,$24
db $24,$D8,"PAUSE"-$37,$21,$24,$24
db $24,$D8,$B7,$B7,$B7,$B7,$B7,$21,$24,$24
db $24,$23,$FC,$FC,$FC,$FC,$FC,$FD,$24,$24

@End

Message_GAME_OVER_ED3C:
db $AB
db @End-@Message

@Message
db $5B
db $FF,$13,$13,$13,$13,$13,$13,$13,$13,$13,$1A
db $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
db $D8,"GAME"-$37,$B7,"OVER"-$37,$21
db $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
db $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End

DATA_ED76:
db $9C,$18,$14,$10,$01
db $10,$02,$20,$03,$08,$02,$08,$01
db $18,$00,$10,$0E,$08,$0D,$20,$0C
db $08,$0D,$08,$0C,$B0,$0B,$80,$03
db $40,$02,$FF,$08,$00

DATA_ED98:
db $88,$10,$12,$28,$0F,$08,$00,$10
db $01,$08,$02,$48,$03,$20,$04,$70
db $0C,$30,$0D,$30,$0E,$FF,$08,$00

DATA_EDB0:
db $90,$20,$12,$60,$0D,$90,$03,$78
db $02

;unknown
db $FF,$08,$00

DATA_EDBC:
db $78,$20,$13,$40,$0F,$10,$0E,$20
db $0D,$18,$0B,$20,$0A,$50,$06,$28
db $04,$38,$03,$78,$02,$FF,$08,$00

DATA_EDD4:
db $80,$10,$12,$20,$0D,$08,$0E,$08
db $0F,$20,$03,$10,$02,$08,$0E,$20
db $0D,$08,$0E,$08,$0F,$08,$01,$08
db $03,$30,$04,$40,$05,$80,$0B,$30
db $0E,$60,$0F,$FF,$08,$00

DATA_EDFA:
db $B8,$08,$14,$10,$04,$08,$03,$08
db $02,$08,$01,$08,$00,$08,$0E,$08
db $0D,$08,$0C,$50,$0B,$60,$0C,$10
db $0D,$40,$02,$70,$01,$FF,$08,$00

DATA_EE1A:
db $70,$18,$12,$40,$0D,$10,$0F,$10
db $02,$30,$04,$20,$05,$40,$03,$20
db $04,$20,$03,$18,$02,$20,$01,$FF
db $08,$00

DATA_EE34:
db $B0,$10,$14,$28,$02,$18,$01,$30
db $00,$10,$0F,$50,$0B,$60,$0C,$20
db $0B,$70,$04,$80,$05,$FF,$08,$00

DATA_EE4C:
db $5A,$08,$13,$10,$02,$20,$0D,$10
db $03,$10,$04,$10,$03,$58,$0D,$28
db $03,$48,$04,$10,$03,$48,$0D,$80
db $03

;unknown
db $FF,$08,$00

DATA_EE68:
db $46,$20,$12,$20,$0E,$38,$04,$18
db $02,$10,$04,$20,$06,$08,$05,$18
db $04,$18,$02,$40,$01,$40,$00

;unknown
db $FF,$08,$00

DATA_EE82:
db $D0,$2A,$14,$30,$0C,$20,$0B,$20
db $0C,$38,$0B,$48,$0C,$40,$02,$30
db $0C,$FF,$08,$00

DATA_EE96:
db $70,$10,$12,$10,$0D,$20,$0E,$10
db $0F,$10,$00,$30,$02,$10,$04,$10
db $05,$60,$05,$20,$0B,$40,$0C,$08
db $0D,$70,$03,$30,$02,$18,$00

;unknown
db $FF,$08,$00

DATA_EEB8:
db $C0,$18,$12,$10,$0D,$40,$0B,$38
db $0D,$08,$0B,$08,$0C,$10,$0D,$70
db $03,$40,$02,$40,$01

;unknown
db $FF,$08,$00

DATA_EED0:
db $90,$18,$14,$20,$02,$28,$0D,$20
db $0B,$20,$0B,$08,$0C,$10,$0D,$20
db $03,$20,$05,$20,$04,$10,$02,$10
db $03,$70,$0D,$40,$04,$50,$03,$20
db $02

;unknown
db $FF,$08,$00

DATA_EEF4:
db $58,$1C,$14,$24,$02,$08,$00,$48
db $0C,$38,$0E,$50,$07,$30,$05,$30
db $04,$28,$0D,$20,$02,$80,$01

;unknown
db $FF,$08,$00

DATA_EF0E:
db $50,$20,$12,$20,$0D,$40,$03,$30
db $0C,$40,$03,$30,$04,$38,$05,$08
db $0B,$28,$0C,$08,$0D,$40,$03,$4A
db $04,$FF,$08,$00

DATA_EF2A:
db $40,$E0,$01

DATA_EF2D:
db $80,$E0,$02

DATA_EF30:
db $D0,$E0,$0E

DATA_EF33:
db $38,$E0,$01

DATA_EF36:
db $A0,$E0,$0D

DATA_EF39:
db $30,$E0,$03

DATA_EF3C:
db $B0,$E0,$0E

DATA_EF3F:
db $90,$E0,$0F

DATA_EF42:
db $40,$E0,$03

DATA_EF45:
db $80,$E0,$03

DATA_EF48:
db $C8,$E0,$0E

DATA_EF4B:
db $50,$E0,$0F

DATA_EF4E:
db $B8,$E0,$0D

DATA_EF51:
db $20,$E0,$03

DATA_EF54:
db $48,$E0,$01

DATA_EF57:
db $B8,$E0,$0F

;free space after this

org $F300                                                   ;this is where sound related matters are
ChannelFrequencyLookup_F300:
db $07,$F0,$00                                              ;first 3 bytes are unused

db $00,$00,$D4,$00,$C8,$00,$BD,$00
db $B2,$00,$A8,$00,$9F,$00,$96,$00
db $8D,$00,$85,$00,$7E,$00,$70,$01
db $AB,$01,$93,$01,$7C,$01,$67,$01
db $52,$01,$3F,$01,$2D,$01,$1C,$01
db $0C,$00,$FD,$00,$EE,$00,$E1,$03
db $57,$02,$F9,$02,$CF,$02,$A6,$02
db $80,$02,$5C,$02,$3A,$02,$1A,$01
db $FC,$01,$DF,$01,$C4,$00,$69,$00
db $63,$00,$53,$00,$4A

ChannelLengthLookup_F350:
db $03,$06
db $0C,$18,$30                                              ;unused
db $12                                                      ;used
db $24                                                      ;unused
db $04,$08,$10,$20,$40,$18                                  ;used
db $30                                                      ;unused

;store to all sound registers related to a single sound channel from a pointer.
;A - sound register offset
;X,Y - pointer to get sound data from, low and high bytes respectively
SetupSoundChannel_Square1_F35E:



SetupSoundChannel_Triangle_F362:



SetupSoundChannel_Noise_F366:



SetupSoundChannel_Square2_F36A:


SetupSoundChannel_F36C:









LOOP_F378:






RTS                                                         ;

;init something, sample?
InitSpecialSound_F383:













































RTS

CODE_F3D0:





RTS

DATA_F3DD:
db $13,$7F,$3E,$F0

DATA_F3E1:
db $4F,$53,$58,$5E,$63,$69,$70,$76
db $7E,$85,$8D,$90,$92,$93

DATA_F3EF:
db $92,$D5,$40,$C0

DATA_F3F3:
db $B2,$DF,$FF,$80

DATA_F3F7:
db $02,$7F,$0F,$08

DATA_F3FB:
db $00,$7F,$03,$08

;unknown
db $FF

DATA_F400:
db $10,$00,$18                                  ;unused

db $10,$01,$18,$00,$01,$88,$06,$02
db $40,$05,$02,$C0


CODE_F40F:














CODE_F423:






CODE_F42E:








CODE_F43A:





CODE_F443:



CODE_F448:


CODE_F44A:




CODE_F451:














CODE_F46C:





CODE_F475:


CODE_F477:




CODE_F47E:












CODE_F492:





CODE_F49B:








CODE_F4A9:








CODE_F4B4:







CODE_F4BF:






CODE_F4C8:


CODE_F4CA:




CODE_F4D1:












CODE_F4E5:





CODE_F4EE:







CODE_F4FA:




RETURN_F501:
RTS

CODE_F502:














RETURN_F51B:
RTS

CODE_F51C:








CODE_F52A:









CODE_F536:







CODE_F541:


ProcessLengthData_F544:






RTS

SetSquare1Frequency_F550:


;Input A - frequency lookup table indx
;X - channel offset
SetChannelFrequency_F552:









RETURN_F563:
RTS                                                         ;

SetSquare2Frequency_F564:



SetTriangleFrequency_F568:



;sound engine
SoundEngine_F56C:











CODE_F581:



RTS

;purge queues.
CODE_F58A:



RTS                                                         ;

PlayDMCSample_F591:





RTS															;

PlayQuackSample_F59A:

GetDMCSampleLocation DMCSample_DuckQuack_FD00				;



PlayBarkSample_F5A2:

GetDMCSampleLocation DMCSample_DogBark_FB00					;


;A - sample size
;X - sample location
;Y - sample Frequency
LoadDMCSample_F5A8:






RTS

DATA_F5B7:
db $9F,$7F,$60,$00

DATA_F5BB:
db $9F,$7F,$61,$00

PlayDogLaugh_F5BF:


















RETURN_F5DA:
RTS

CODE_F5DB:


















RTS


CODE_F5FB:





















RTS

;last 4 bit checks
CODE_F621:
















RTS

PlaySFX_DuckFall_F639:



RTS

PlaySFX_ClayPigeonFall_F641:












RETURN_F654:
RTS

CODE_F655:













CODE_F669:






RTS

PlaySFX_ClayPigeonHit_F675:










RTS

;silence all sound channels, disable special sound from playing
PlaySFX_Silence_F688:
CODE_F688:



SilenceSoundChannels_F68C:









RTS                                                         ;

InitSFX_WingFlag_F6A2:











RETURN_F6B3:
RTS

PlaySFX_WingFlag_F6B4:












RTS

DATA_F6CB:
db $00,$02,$01,$00

;first 4 bits check
CODE_F6CF:

















RTS

InitSFX_ZapperShot_F6E8:













CODE_F6FE:
RTS

DATA_F6FF:
db $3F,$7F,$0F,$08

PlaySFX_ZapperShot_F703:



























RETURN_F730:
RTS

DATA_F731:
db $0E,$0B,$05,$05,$05,$05,$05,$05
db $05,$05,$05,$05,$04,$04,$04,$04
db $04,$04,$03,$03,$03,$03,$03,$04
db $03,$02,$02,$02,$02,$02,$02,$02
db $02,$01,$01,$01,$02,$02,$01,$01
db $00,$00,$00,$00,$00,$00,$00,$00

DATA_F761:
db $3F,$3F,$3F,$3F,$3F,$3F,$3D,$3C
db $38,$38,$38,$37,$37,$37,$36,$36
db $34,$34,$34,$34,$34,$34,$34,$34
db $33,$33,$33,$33,$33,$33,$33,$33
db $32,$32,$32,$32,$32,$32,$32,$32
db $32,$32,$32,$32,$32,$32,$32,$32

CODE_F791:







CODE_F79C:

RTS

DATA_F7A0:
db $84,$93,$70,$E3

DATA_F7A4:
db $84,$93,$72,$E3

CODE_F7A8:











CODE_F7BA:




CODE_F7C0:




CODE_F7C6:




CODE_F7CC:































RTS

CODE_F7FA:


CODE_F7FD:




CODE_F803:




CODE_F809:




CODE_F80F:




CODE_F815:




CODE_F81B:







CODE_F826:







CODE_F82F:




CODE_F836:






CODE_F840:




FanfareHeaders_F846:
db FanfareHeader_1-FanfareHeaders_F846
db FanfareHeader_2-FanfareHeaders_F846
db FanfareHeader_3-FanfareHeaders_F846
db FanfareHeader_4-FanfareHeaders_F846
db FanfareHeader_5-FanfareHeaders_F846
db FanfareHeader_6-FanfareHeaders_F846
db FanfareHeader_7-FanfareHeaders_F846
db FanfareHeader_8-FanfareHeaders_F846
db FanfareHeader_9-FanfareHeaders_F846
db FanfareHeader_10-FanfareHeaders_F846

;Each fanfare has a header, with following format:
;1 byte - note length lookup offset
;2 bytes - pointer to square 1 sound data
;2 bytes - pointer to square 2 sound data
;2 bytes - pointer to triangle sound data
;2 bytes - pointer to noise sound data

FanfareHeader_1:
db $07
dw DATA_F8C3
dw DATA_F8E2
dw DATA_F908
dw DATA_F91B

FanfareHeader_2:
db $07
dw DATA_F92F
dw DATA_F960
dw DATA_F9A1
dw DATA_F9CC

FanfareHeader_3:
db $07
dw DATA_FAAF
dw DATA_FACA
dw DATA_FAE4
dw DATA_FAF5

FanfareHeader_4:
db $07
dw DATA_F9DA
dw DATA_F9F7
dw DATA_FA13
dw DATA_FA28

FanfareHeader_5:
db $07
dw DATA_FA2F
dw DATA_FA3F
dw DATA_FA64
dw DATA_FA80

FanfareHeader_6:
db $07
dw DATA_FA91
dw DATA_FA9A
dw DATA_FAA7
dw $0000

FanfareHeader_7:
db $07
dw DATA_F8BD
dw $0000
dw $0000
dw $0000

FanfareHeader_8:
db $00
dw DATA_F926
dw DATA_F92A
dw $0000
dw $0000

FanfareHeader_9:
db $00
dw DATA_F8AA
dw DATA_F8B1
dw DATA_F8B7
dw $0000

FanfareHeader_10:
db $00
dw DATA_FF00
dw DATA_FF18
dw $0000
dw $0000

DATA_F8AA:
db $85,$3E,$3C,$3A,$38,$36
db $00

DATA_F8B1:
db $85,$44,$42,$40,$3E,$3C

DATA_F8B7:
db $85,$3E,$3C,$3A,$38,$36

DATA_F8BD:
db $C3,$80,$10,$4E,$FF
db $00

DATA_F8C3:
db $84,$02,$81,$02,$2A,$2A,$02,$2C
db $02,$2C,$02,$2E,$30,$02,$22,$83
db $02,$81,$02,$08,$02,$02,$06,$02
db $06,$02,$28,$2A,$02,$22
db $00

DATA_F8E2:
db $84,$02,$81,$02,$80,$46,$46,$81
db $46,$02,$1C,$1E,$20,$22,$80,$28
db $28,$81,$2A,$02,$40,$83,$02,$81
db $02,$30,$02,$02,$80,$2C,$2C,$81
db $1E,$20,$22,$30,$83,$02

DATA_F908:
db $C6,$80,$0C,$02,$0C,$02,$18,$02
db $18,$02,$4C,$02,$4C,$02,$18,$02
db $18,$02
db $FF

DATA_F91B:
db $C6,$81,$03,$03,$06,$06,$03,$03
db $06,$03
db $FF

DATA_F926:
db $81,$16,$4A
db $00

DATA_F92A:
db $80,$02,$81,$16,$4A

DATA_F92F:
db $81,$0C,$0C,$12,$02,$0C,$02,$12
db $02,$0E,$0E,$16,$02,$0E,$02,$16
db $02,$0C,$0C,$12,$02,$0C,$02,$12
db $02,$12,$10,$0E,$0C,$08,$04,$30
db $02,$80,$04,$04,$81,$08,$0A,$0C
db $80,$0E,$0E,$81,$12,$16,$18,$48
db $00

DATA_F960:
db $80,$04,$04,$81,$04,$22,$28,$04
db $22,$24,$28,$80,$2C,$2C,$81,$2C
db $24,$2C,$04,$2C,$80,$04,$30,$2C
db $28,$80,$04,$04,$81,$22,$24,$10
db $28,$2A,$2C,$2E,$80,$30,$30,$81
db $2E,$2C,$28,$80,$24,$24,$81,$22
db $1E,$02,$80,$22,$22,$81,$24,$26
db $28,$80,$2C,$2C,$81,$30,$04,$08
db $0C

DATA_F9A1:
db $81,$1A,$1A,$02,$20,$22,$02,$3E
db $02,$3A,$3A,$02,$40,$42,$02,$1A
db $42,$1A,$32,$02,$34,$36,$38,$3A
db $02,$3E,$82,$3E,$81,$42,$44,$46
db $3E,$02,$1A,$1A,$02,$38,$3A,$3A
db $02,$3A,$1A

DATA_F9CC:
db $C8,$81,$06,$03,$06,$80,$09,$03
db $81,$03,$03,$82,$0C
db $FF

DATA_F9DA:
db $81,$2A,$2A,$28,$02,$26,$02,$24
db $02,$85,$22,$81,$24,$83,$02,$81
db $02,$0E,$06,$2A,$2A,$28,$26,$24
db $85,$22,$81,$24
db $00

DATA_F9F7:
db $81,$24,$24,$22,$02,$20,$02,$1E
db $02,$85,$3E,$81,$40,$83,$02,$81
db $02,$2A,$24,$1C,$1A,$46,$44,$40
db $85,$3E,$81,$40

DATA_FA13:
db $84,$02,$85,$1A,$81,$1C,$83,$02
db $81,$02,$4A,$14,$0E,$0A,$08,$06
db $04,$85,$1A,$81,$1C

DATA_FA28:
db $CC,$81,$06,$06,$09,$03 
db $FF

DATA_FA2F:
db $82,$08,$10,$16,$48,$18,$02,$12
db $02,$10,$0C,$08,$06,$81,$08
db $00

DATA_FA3F:
db $81,$26,$26,$82,$2C,$81,$08,$0C
db $10,$16,$80,$12,$12,$81,$28,$10
db $0C,$30,$2E,$30,$04,$80,$2C,$2C
db $81,$08,$28,$30,$80,$26,$26,$81
db $2C,$22,$2C,$82,$26

DATA_FA64:
db $85,$1E,$81,$1E,$82,$3C,$3C,$85
db $3E,$81,$3E,$85,$3E,$81,$3E,$85
db $42,$81,$42,$85,$42,$81,$42,$82
db $1E,$81,$1E,$1E                                          ;three last values seem unused?

DATA_FA80:
db $C4,$81,$06,$82,$0C,$81,$06,$80
db $09,$03,$03,$03,$09,$03,$03,$03
db $FF

DATA_FA91:
db $81,$0A,$24,$26,$28,$2E,$0A,$04
db $00

DATA_FA9A:
db $80,$12,$12,$81,$0A,$0A,$80,$20
db $20,$81,$28,$2E,$2A

DATA_FAA7:
db $81,$20,$02,$20,$28,$02,$28,$2A

DATA_FAAF:
db $82,$02,$81,$0E,$08,$04,$2C,$2A
db $28,$24,$1E,$1C,$1A,$1E,$24,$2E
db $24,$2C,$04,$28,$2E,$08,$28,$30
db $0E,$0C
db $00

DATA_FACA:
db $82,$02,$81,$2C,$2C,$02,$02,$1E
db $02,$02,$02,$02,$02,$44,$1E,$24
db $42,$1A,$2C,$44,$1E,$24,$46,$1E
db $1E,$28

DATA_FAE4:
db $82,$1E,$81,$1E,$85,$22,$24,$3C
db $82,$3E,$81,$3E,$85,$42,$44,$46
db $1A

DATA_FAF5:
db $C5,$81,$06,$06,$06,$09,$03,$06
db $FF

;free space until samples, so they are aligned properly (2 measily bytes)

include Data/DMCSamples/Bark.asm
include Data/DMCSamples/Quack.asm

DATA_FF00:
db $87,$04,$28,$04,$28,$04,$0C,$04
db $0C,$04,$0C,$12,$0C,$12,$0C,$12
db $48,$12,$48,$12,$48,$80,$02,$00

DATA_FF18:
db $80,$02,$87,$04,$28,$04,$28,$04
db $0C,$04,$0C,$04,$0C,$12,$0C,$12
db $0C,$12,$48,$12,$48,$12,$48

;freespace here

org $FFFA
dw NMI_C086
dw RESET_C000
dw RESET_C000									;IRQ unused

incbin DuckHuntGFX0.bin
