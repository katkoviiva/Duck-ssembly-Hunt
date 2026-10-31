;pointers to sprite images
POINTERS_DAC5:
.word DATA_DB0F
.word DATA_DB14
.word DATA_DB1D
.word DATA_DB26
.word DATA_DB2F
.word DATA_DB38
.word DATA_DB41
.word DATA_DB4A
.word DATA_DB5B
.word DATA_DB86
.word DATA_DB6C
.word DATA_DB79
.word DATA_DB8F
.word DATA_DB9C
.word DATA_DBA9
.word DATA_DBB6
.word DATA_DBC3
.word DATA_DC3A
.word DATA_DBFA
.word DATA_DC07
.word DATA_DC0C
.word DATA_DC25
.word DATA_DBD0
.word DATA_DBE5
.word DATA_DC4B
.word DATA_DC50
.word DATA_DC61
.word DATA_DC72
.word DATA_DC7B
.word DATA_DC88
.word DATA_DC91
.word DATA_DC9A
.word DATA_DC9F
.word DATA_DCA8
.word DATA_DCAD
.word DATA_DCB6
.word UNUSED_DCBB                                                ;unused?

;format: pointer for the sprite image, followed by y-offset and x-offset. repeat until hitting break command $00
DATA_DB0F:
.word DATA_DD0C
.byte $F0,$F0
.byte $00

DATA_DB14:
.word DATA_DD24
.byte $F0,$F0

.word DATA_DDE1
.byte $EF,$08
.byte $00

DATA_DB1D:
.word DATA_DD3A
.byte $F0,$F0

.word DATA_DDE1
.byte $EE,$08
.byte $00

DATA_DB26:
.word DATA_DD53
.byte $F0,$F8

.word DATA_DD65
.byte $F4,$F0
.byte $00

DATA_DB2F:
.word DATA_DD6F
.byte $F0,$F8

.word DATA_DD81
.byte $FC,$F0
.byte $00

DATA_DB38:
.word DATA_DD8A
.byte $F0,$F8

.word DATA_DD9C
.byte $04,$F0
.byte $00

DATA_DB41:
.word DATA_DDC3
.byte $F0,$F0

.word DATA_DDD7
.byte $FC,$10
.byte $00

DATA_DB4A:
.word DATA_DDE6
.byte $F8,$F8

.word DATA_DDEF
.byte $FF,$F0

.word DATA_DDF4
.byte $F7,$08

.word DATA_DDDC
.byte $FB,$10
.byte $00

DATA_DB5B:
.word DATA_DDFA
.byte $F8,$F8

.word DATA_DDEF
.byte $FE,$F0

.word DATA_DDF4
.byte $F6,$08

.word DATA_DDD7
.byte $FA,$10
.byte $00

DATA_DB6C:
.word DATA_DE04
.byte $F0,$F4

.word DATA_DE12
.byte $F4,$04

.word DATA_DE17
.byte $08,$04
.byte $00

DATA_DB79:
.word DATA_DE1C
.byte $F0,$FC

.word DATA_DE2A
.byte $F4,$F4

.word DATA_DE2F
.byte $08,$F4
.byte $00

DATA_DB86:
.word DATA_DDA5
.byte $F0,$F0

.word DATA_DDBD
.byte $08,$FA
.byte $00

DATA_DB8F:
.word DATA_DE90
.byte $F8,$10

.word DATA_DE34
.byte $F0,$E8

.word DATA_DFED
.byte $E8,$EA
.byte $00

DATA_DB9C:
.word DATA_DE90
.byte $F8,$10

.word DATA_DE4B
.byte $F0,$E8

.word DATA_DFF2
.byte $E0,$F0
.byte $00

DATA_DBA9:
.word DATA_DE90
.byte $F8,$10

.word DATA_DE62
.byte $F0,$E8

.word DATA_DFED
.byte $E8,$EA
.byte $00

DATA_DBB6:
.word DATA_DE90
.byte $F8,$10

.word DATA_DE79
.byte $F0,$E8

.word DATA_DFF2
.byte $E0,$F0
.byte $00

DATA_DBC3:
.word DATA_DE9A
.byte $F8,$10

.word DATA_DE34
.byte $F0,$E8

.word DATA_DFED
.byte $E8,$EA
.byte $00

DATA_DBD0:
.word DATA_DEA4
.byte $F0,$F8

.word DATA_DEB8
.byte $10,$F8

.word DATA_DEC0
.byte $ED,$F0

.word DATA_DEC6
.byte $F0,$08

.word DATA_DECB
.byte $FE,$F0
.byte $00

DATA_DBE5:
.word DATA_DED3
.byte $F0,$F8

.word DATA_DEE7
.byte $10,$F8

.word DATA_DEEF
.byte $ED,$F0

.word DATA_DEF5
.byte $F0,$08

.word DATA_DEFA
.byte $FE,$F0
.byte $00

DATA_DBFA:
.word DATA_DF02
.byte $E0,$00

.word DATA_DF0B
.byte $F0,$10

.word DATA_DF10
.byte $F0,$F0
.byte $00

DATA_DC07:
.word DATA_DF29
.byte $F0,$F0
.byte $00

DATA_DC0C:
.word DATA_DF3F
.byte $ED,$F0

.word DATA_DF45
.byte $03,$F0

.word DATA_DF4B
.byte $F0,$F8

.word DATA_DF55
.byte $10,$F8

.word DATA_DF5D
.byte $F0,$00

.word DATA_DF80
.byte $04,$18
.byte $00

DATA_DC25:
.word DATA_DF85
.byte $F0,$E0

.word DATA_DF5D
.byte $F0,$00

.word DATA_DFAB
.byte $04,$E0

.word DATA_DFB0
.byte $04,$18

.word DATA_DF55
.byte $10,$F8
.byte $00

DATA_DC3A:
.word DATA_DFB5
.byte $E0,$00

.word DATA_DFCB
.byte $00,$00

.word DATA_DFDA
.byte $F0,$E8

.word DATA_DFF8
.byte $E0,$F0
.byte $00

DATA_DC4B:
.word DATA_DFFE
.byte $F8,$F4
.byte $00

DATA_DC50:
.word DATA_E00F
.byte $FC,$F5

.word DATA_E014
.byte $FC,$03

.word DATA_E019
.byte $F9,$FC

.word DATA_E01E
.byte $FE,$FC
.byte $00

DATA_DC61:
.word DATA_E00F
.byte $FC,$F7

.word DATA_E014
.byte $FC,$01

.word DATA_E019
.byte $FA,$FC

.word DATA_E01E
.byte $FD,$FC
.byte $00

DATA_DC72:
.word DATA_E00F
.byte $FC,$F8

.word DATA_E014
.byte $FC,$00
.byte $00

DATA_DC7B:
.word DATA_E023
.byte $FC,$F7

.word DATA_E023
.byte $FC,$F9

.word DATA_E028
.byte $FC,$01
.byte $00

DATA_DC88:
.word DATA_E023
.byte $FC,$F8

.word DATA_E028
.byte $FC,$00
.byte $00

DATA_DC91:
.word DATA_E023
.byte $FC,$F9

.word DATA_E028
.byte $FC,$FF
.byte $00

DATA_DC9A:
.word DATA_E02D
.byte $FC,$FC
.byte $00

DATA_DC9F:
.word DATA_E032
.byte $FC,$FC

.word DATA_E032
.byte $FC,$FB
.byte $00

DATA_DCA8:
.word DATA_E032
.byte $FC,$FC
.byte $00

DATA_DCAD:
.word DATA_E037
.byte $FC,$FC

.word DATA_E037
.byte $FC,$FD
.byte $00

DATA_DCB6:
.word DATA_E037
.byte $FC,$FC
.byte $00

UNUSED_DCBB:
.word UNUSED_E03C
.byte $FC,$F8
.byte $00

;general sprite tile offsets for drawing a sprite image, depending on the image size
;y-offset, x-offset
;16x32
GeneralSpriteTileOffsets_DCC0:
.byte $00,$00
.byte $08,$00
.byte $10,$00
.byte $18,$00
.byte $00,$08
.byte $08,$08
.byte $10,$08
.byte $18,$08

;"duck size". not a 32x32
.byte $00,$00
.byte $00,$08
.byte $00,$10
.byte $00,$18
.byte $08,$00
.byte $08,$08
.byte $08,$10
.byte $08,$18
.byte $10,$00
.byte $10,$08
.byte $10,$10
.byte $10,$18
.byte $18,$00
.byte $18,$08
.byte $18,$10
.byte $18,$18
.byte $08,$20                                                  ;looks like these were added later...
.byte $10,$20
.byte $18,$20

.byte $18,$20                                                  ;unused (placeholder?)

;16x24
.byte $00,$00
.byte $08,$00
.byte $10,$00
.byte $00,$08
.byte $08,$08
.byte $10,$08

;size 3
.byte $00,$00
.byte $08,$00
.byte $00,$18
.byte $08,$18

;format:
;first byte is the image size, using general tile offset table. available sizes are 32x16, 32x32, 24x24 and 16x16
;then follows image data.
;$FD - set OAM tile property, using the immediate next byte
;$FE - skip tile
DATA_DD0C:
.byte $01

.byte $FD,OAMProp_Palette0
.byte $00,$01,$02

.byte $FD,OAMProp_Palette1
.byte $03

.byte $FD,OAMProp_Palette0
.byte $04,$05,$06,$07
.byte $08,$09,$0A,$FE

.byte $FD,OAMProp_Palette1
.byte $0B,$0C

.byte $FF

DATA_DD24:
.byte $01
.byte $FD,OAMProp_Palette0,$FE,$FE,$0D,$FE
.byte $FD,OAMProp_Palette0,$0F,$10,$11,$FE,$12,$13,$14,$15
.byte $FD,OAMProp_Palette1,$16,$17
.byte $FF

DATA_DD3A:
.byte $01
.byte $FD,OAMProp_Palette0,$FE,$FE,$18,$FE
.byte $FD,OAMProp_Palette0,$1A,$1B,$1C,$FE,$1D,$1E,$1F,$FE
.byte $FD,OAMProp_Palette1,$20,$21
.byte $FD,OAMProp_Palette0,$22,$FF

DATA_DD53:
.byte $00
.byte $FD,OAMProp_Palette0,$25,$26,$27
.byte $FD,OAMProp_Palette1,$28
.byte $FD,OAMProp_Palette0|OAMProp_XFlip,$25,$26,$27
.byte $FD,OAMProp_Palette1|OAMProp_XFlip,$28
.byte $FF

DATA_DD65:
.byte $03
.byte $FD,OAMProp_Palette0,$23,$24
.byte $FD,OAMProp_Palette0|OAMProp_XFlip,$23,$24
.byte $FF

DATA_DD6F:
.byte $00
.byte $FD,OAMProp_Palette0,$2A,$2B,$2C
.byte $FD,OAMProp_Palette1,$2D
.byte $FD,OAMProp_Palette0|OAMProp_XFlip,$2A,$2B,$2C
.byte $FD,OAMProp_Palette1|OAMProp_XFlip,$2D
.byte $FF

DATA_DD81:
.byte $03
.byte $FD,OAMProp_Palette0,$29,$FE
.byte $FD,OAMProp_Palette0|OAMProp_XFlip,$29
.byte $FF

DATA_DD8A:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $2F,$30,$31
.byte $FD,OAMProp_Palette1
.byte $32
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $2F,$30,$31
.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $32
.byte $FF

DATA_DD9C:
.byte $03

.byte $FD,OAMProp_Palette0
.byte $2E,$FE
.byte $FD,OAMProp_Palette0|OAMProp_XFlip,$2E

.byte $FF

DATA_DDA5:
.byte $01

.byte $FD,OAMProp_Palette0
.byte $33,$34,$35

.byte $FD,OAMProp_Palette1
.byte $36

.byte $FD,OAMProp_Palette0
.byte $37,$38,$39

.byte $FD,OAMProp_Palette1
.byte $3A

.byte $FD,OAMProp_Palette0
.byte $FE,$3B,$3C,$3D

.byte $FF

DATA_DDBD:
.byte $01
.byte $FD,OAMProp_Palette1
.byte $3E,$3F
.byte $FF

DATA_DDC3:
.byte $01

.byte $FD,OAMProp_Palette0
.byte $FE,$40,$41,$FE
.byte $FE,$42,$43,$44
.byte $45,$46,$47,$48
.byte $FE

.byte $FD,OAMProp_Palette1
.byte $49
.byte $FF

DATA_DDD7:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $4A
.byte $FF

DATA_DDDC:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $F6
.byte $FF

DATA_DDE1:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $03
.byte $FF

DATA_DDE6:
.byte $02
.byte $FD,OAMProp_Palette1
.byte $9F,$A0,$A1,$A2,$A3
.byte $FF

DATA_DDEF:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $45
.byte $FF

DATA_DDF4:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $44,$48
.byte $FF

DATA_DDFA:
.byte $02
.byte $FD,OAMProp_Palette1
.byte $A4,$A5,$A6,$A7
.byte $A8,$A9
.byte $FF

DATA_DE04:
.byte $00

.byte $FD,OAMProp_Palette1
.byte $AB,$AC,$FE,$FE,$0E,$19,$AA

.byte $FD,OAMProp_Palette0|OAMProp_YFlip
.byte $E5

.byte $FF

DATA_DE12:
.byte $00
.byte $FD,OAMProp_Palette1|OAMProp_YFlip
.byte $EA
.byte $FF

DATA_DE17:
.byte $00
.byte $FD,OAMProp_Palette1|OAMProp_YFlip
.byte $E9
.byte $FF

DATA_DE1C:
.byte $00

.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $0E,$19,$AA

.byte $FD,OAMProp_Palette0|OAMProp_XFlip|OAMProp_YFlip
.byte $E5

.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $AB,$AC

.byte $FF

DATA_DE2A:
.byte $00
.byte $FD,OAMProp_Palette1|OAMProp_XFlip|OAMProp_YFlip
.byte $EA
.byte $FF

DATA_DE2F:
.byte $00
.byte $FD,OAMProp_Palette1|OAMProp_XFlip|OAMProp_YFlip
.byte $E9
.byte $FF

DATA_DE34:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $52,$53,$54,$FE
.byte $55,$56,$56,$57
.byte $5A,$5B,$5C,$5D
.byte $61,$62,$63,$64
.byte $58,$5E,$65
.byte $FF

DATA_DE4B:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $52,$6A
.byte $54,$FE,$55,$6B,$56,$57,$6C,$6D
.byte $6E,$6F,$70,$71,$72,$73,$58,$5E
.byte $74
.byte $FF

DATA_DE62:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $75,$53,$54
.byte $FE,$76,$56,$56,$57,$77,$78,$79
.byte $7A,$7B,$7C,$7D,$7E,$58,$5E,$7F
.byte $FF

DATA_DE79:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $52,$6A,$54,$FE
.byte $76,$6B,$56,$57,$80,$81,$82,$83
.byte $85,$86,$87,$88,$58,$84,$89
.byte $FF

DATA_DE90:
.byte $02
.byte $FD,OAMProp_Palette2
.byte $59,$5F,$66,$FE,$60,$67
.byte $FF

DATA_DE9A:
.byte $02
.byte $FD,OAMProp_Palette2
.byte $4B,$4C,$4D
.byte $4E,$4F,$50
.byte $FF

DATA_DEA4:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $CD,$CE,$CF
.byte $FD,OAMProp_Palette3
.byte $D0
.byte $FD,OAMProp_Palette2|OAMProp_XFlip
.byte $CD,$CE
.byte $FD,OAMProp_Palette2
.byte $D2
.byte $FD,OAMProp_Palette3
.byte $D3
.byte $FF

DATA_DEB8:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $D1
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $D1
.byte $FF

DATA_DEC0:
.byte $03
.byte $FD,OAMProp_Palette2
.byte $C9,$CA
.byte $FF

DATA_DEC6:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $D4
.byte $FF

DATA_DECB:
.byte $03
.byte $FD,OAMProp_Palette3
.byte $CB,$CC,$D5,$D6
.byte $FF

DATA_DED3:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $D7,$D8,$D9
.byte $FD,OAMProp_Palette3
.byte $D0
.byte $FD,OAMProp_Palette2|OAMProp_XFlip
.byte $D7,$D8
.byte $FD,OAMProp_Palette2
.byte $DA
.byte $FD,OAMProp_Palette3
.byte $D3
.byte $FF

DATA_DEE7:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $D1
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $D1
.byte $FF

DATA_DEEF:
.byte $03
.byte $FD,OAMProp_Palette2
.byte $C9,$CA
.byte $FF

DATA_DEF5:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $D4
.byte $FF

DATA_DEFA:
.byte $03
.byte $FD,OAMProp_Palette3
.byte $CB,$CC,$D5,$D6
.byte $FF

DATA_DF02:
.byte $02
.byte $FD,OAMProp_Palette3
.byte $B3,$B4,$FE,$B9,$BA
.byte $FF

DATA_DF0B:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $BF
.byte $FF

DATA_DF10:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $FE,$AF,$B5
.byte $FD,OAMProp_Palette2
.byte $BB
.byte $FD,OAMProp_Palette3
.byte $FE,$B0,$B6,$BC,$AD
.byte $B1,$B7,$BD,$AE,$B2
.byte $B8,$BE,$C0
.byte $FF

DATA_DF29:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $FE,$FE,$C1,$C2
.byte $C3,$C4,$C5,$C6
.byte $AD,$B1,$B7,$C7
.byte $AE,$B2,$B8,$BE
.byte $FE,$C8
.byte $FF

DATA_DF3F:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $C9,$CA
.byte $FF

DATA_DF45:
.byte $00
.byte $FD,OAMProp_Palette3
.byte $DB,$DC
.byte $FF

DATA_DF4B:
.byte $00
.byte $FD,OAMProp_Palette2
.byte $DD,$DE
.byte $FD,OAMProp_Palette3
.byte $DF,$E0
.byte $FF

DATA_DF55:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $D1
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $D1
.byte $FF

DATA_DF5D:
.byte $01
.byte $FD,OAMProp_Palette2|OAMProp_XFlip
.byte $DD
.byte $FD,OAMProp_Palette2
.byte $D4
.byte $FD,OAMProp_Palette0
.byte $E5
.byte $FD,OAMProp_Palette1
.byte $E9
.byte $FD,OAMProp_Palette2|OAMProp_XFlip
.byte $DE
.byte $FD,OAMProp_Palette3
.byte $E2
.byte $E6,$FE,$E1,$E3
.byte $FD,OAMProp_Palette1
.byte $E7,$FE
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $E0
.byte $FD,OAMProp_Palette1
.byte $E4,$E8
.byte $FF

DATA_DF80:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $EA
.byte $FF

DATA_DF85:
.byte $01
.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $E9
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $E5
.byte $FD,OAMProp_Palette2|OAMProp_XFlip
.byte $D4
.byte $FD,OAMProp_Palette2
.byte $DD,$FE
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $E6,$E2
.byte $FD,OAMProp_Palette2
.byte $DE,$FE
.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $E7
.byte $FD,OAMProp_Palette3|OAMProp_XFlip
.byte $E3,$E1,$FE
.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $E8,$E4
.byte $FD,OAMProp_Palette3
.byte $E0
.byte $FF

DATA_DFAB:
.byte $00
.byte $FD,OAMProp_Palette1|OAMProp_XFlip
.byte $EA
.byte $FF

DATA_DFB0:
.byte $00
.byte $FD,OAMProp_Palette1
.byte $EA
.byte $FF

DATA_DFB5:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $8A,$8B,$FE,$FE,$8C
.byte $FD,OAMProp_Palette2
.byte $8D,$8E,$FE,$8F,$90
.byte $91,$92,$93,$94,$95,$96
.byte $FF

DATA_DFCB:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $97
.byte $FD,OAMProp_Palette2
.byte $98
.byte $FD,OAMProp_Palette3
.byte $99,$FE,$9A,$9B
.byte $9C
.byte $FF

DATA_DFDA:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $52,$53,$54
.byte $FE,$55,$56,$56
.byte $FE,$5A,$5B,$5C
.byte $FE,$61,$62,$63
.byte $FF

DATA_DFED:
.byte $01
.byte $FD,OAMProp_Palette3
.byte $51
.byte $FF

DATA_DFF2:
.byte $02
.byte $FD,OAMProp_Palette3
.byte $68,$69
.byte $FF

DATA_DFF8:
.byte $00
.byte $FD,OAMProp_Palette3
.byte $9D,$9E
.byte $FF

DATA_DFFE:
.byte $01
.byte $FD,OAMProp_Palette0
.byte $F2,$F3
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $F2,$FE
.byte $FD,OAMProp_Palette0
.byte $F4,$F5
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $F4
.byte $FF

DATA_E00F:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $EB
.byte $FF

DATA_E014:
.byte $00
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $EB
.byte $FF

DATA_E019:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $F3
.byte $FF

DATA_E01E:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $F5
.byte $FF

DATA_E023:
.byte $01
.byte $FD
.byte $00,$EC
.byte $FF

DATA_E028:
.byte $01
.byte $FD,OAMProp_Palette0|OAMProp_XFlip
.byte $EC
.byte $FF

DATA_E02D:
.byte $01
.byte $FD,OAMProp_Palette0
.byte $EF
.byte $FF

DATA_E032:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $F0
.byte $FF

DATA_E037:
.byte $00
.byte $FD,OAMProp_Palette0
.byte $F1
.byte $FF

;unknown
UNUSED_E03C:
.byte $01
.byte $FD,OAMProp_Palette0
.byte $ED,$EE
.byte $FF

;Game A/B - Ducks
Layout_DuckGame_E042:
.word $2300
.byte 32|StripeImageCommand_Repeat
.byte $50

.word $2320
.byte 32|StripeImageCommand_Repeat
.byte $50

.word $2340
.byte 32|StripeImageCommand_Repeat 
.byte $50

.word $2360
.byte 32|StripeImageCommand_Repeat 
.byte $50

.word $2380
.byte 32|StripeImageCommand_Repeat 
.byte $50

.word $23A0
.byte 32|StripeImageCommand_Repeat 
.byte $50

.word $2240
.byte 32
.byte $3D,$3E,$3F,$40,$56,$57,$D1,$D2
.byte $3A,$3B,$3C,$3D,$3E,$3F,$40,$39
.byte $3A,$3B,$3C,$3D,$3E,$3F,$40,$D2
.byte $30,$31,$32,$33,$39,$3A,$3B,$3C

.word $2260
.byte 32
.byte $95,$96,$97,$98,$58,$59,$5A,$5B
.byte $92,$93,$94,$95,$96,$97,$98,$91
.byte $92,$93,$94,$95,$96,$97,$98,$5B
.byte $34,$35,$36,$37,$91,$92,$93,$94

.word $2280
.byte 32
.byte $46,$45,$48,$46,$46,$45,$46,$48
.byte $42,$43,$44,$46,$45,$48,$46,$41
.byte $42,$43,$44,$46,$45,$48,$46,$48
.byte $38,$45,$46,$46,$41,$42,$43,$44

.word $22A0
.byte 32|StripeImageCommand_Repeat
.byte $46

;add some grass detail
.word $22A4
.byte 1
.byte $48

.word $22A8
.byte 1
.byte $47

.word $22AA
.byte 1
.byte $48

.word $22B0
.byte 1
.byte $47

.word $22B2
.byte 1
.byte $48

.word $22BA
.byte 1
.byte $48

.word $22C0
.byte 32
.byte $4C,$4D,$4E,$4F,$49,$4A,$4B,$49
.byte $4C,$4D,$4E,$4F,$4D,$4E,$4F,$49
.byte $4A,$4B,$49,$4C,$4D,$4E,$4F,$49
.byte $49,$4A,$4B,$49,$4C,$4D,$4E,$4F

.word $22E0
.byte 32
.byte $52,$50,$53,$50,$50,$51,$50,$50
.byte $52,$50,$53,$50,$50,$53,$50,$50
.byte $51,$50,$50,$52,$50,$53,$50,$50
.byte $50,$51,$50,$50,$52,$50,$53,$50

.word $2300
.byte 1
.byte $52

.word $2302
.byte 2
.byte $54,$52

.word $230A
.byte 2
.byte $54,$52

.word $230D
.byte 2
.byte $54,$52

.word $230F                                                   ;could've combined this with the previous write to save 3 bytes (by drawing 4 at once)
.byte 2
.byte $54,$52

.word $2315
.byte 2
.byte $54,$52

.word $231E
.byte 2
.byte $54,$52

.word $21F9
.byte 3
.byte $28,$29,$2A

.word $2219
.byte 3
.byte $2B,$46,$2C

.word $2238
.byte 4
.byte $2D,$2E,$46,$2F

.word $2081
.byte 4
.byte $5C,$5D,$5E,$5F

.word $20A1
.byte 5
.byte $60,$61,$46,$62,$63

.word $20C1
.byte 5
.byte $64,$65,$66,$67,$68

.word $20E3
.byte 5
.byte $69,$74,$75,$76,$6A

.word $2103
.byte 5
.byte $6B,$6C,$7C,$6D,$6E

.word $2123
.byte 5
.byte $6F,$70,$71,$72,$73

.word $2140
.byte 7
.byte $74,$75,$76,$77,$78,$79,$7A

.word $2160
.byte 9
.byte $7B,$7C,$7D,$7E,$7F,$80,$5D,$5E,$5F

.word $2181
.byte 9
.byte $81,$82,$83,$84,$60,$61,$46,$62,$63

.word $21A3
.byte 7
.byte $85,$86,$64,$87,$88,$67,$68

.word $21C3
.byte 4
.byte $89,$8A,$8B,$8C

.word $21E4
.byte 2
.byte $8D,$8E

.word $2204
.byte 2
.byte $8F,$90

.word $2224
.byte 2
.byte $8F,$55

.word $2303
.byte 2
.byte $1B,$27

.word $2323
.byte 27|StripeImageCommand_Repeat
.byte $E3

.word $2322
.byte $06
.byte $E2,$E3,$E3,$E3,$E4,$E2

.word $2336
.byte 2
.byte $E4,$E2

.word $233E
.byte 1
.byte $E4

.word $2348
.byte 22|StripeImageCommand_Repeat
.byte $B7

.word $2342
.byte 6
.byte $E5,$D9,$D9,$D9,$E7,$E5

.word $234C
.byte 10|StripeImageCommand_Repeat
.byte $D6

.word $2356
.byte 2
.byte $E7,$E5

.word $235E
.byte 1
.byte $E7

.word $2358
.byte 6|StripeImageCommand_Repeat
.byte $00

.word $2368
.byte 22|StripeImageCommand_Repeat
.byte $B7

.word $2362
.byte 6
.byte $E5,$DA,$DB,$DC,$E7,$E5

.word $2376
.byte 2
.byte $E7,$E5

.word $237E
.byte 1
.byte $E7

.word $2379
.byte 5
.byte $1C,$0C,$18,$1B,$0E

.word $2383
.byte 27|StripeImageCommand_Repeat
.byte $E9

.word $2382
.byte 1
.byte $E8

.word $2386
.byte 2
.byte $EA,$E8

.word $2396
.byte 2
.byte $EA,$E8

.word $239E
.byte 1
.byte $EA

.word $23C0
.byte 32|StripeImageCommand_Repeat
.byte $00

.word $23CA
.byte 4
.byte $CC,$FF,$FF,$FF

.word $23D2
.byte 4
.byte $CC,$FF,$FF,$FF

.word $23E0
.byte 8|StripeImageCommand_Repeat
.byte $50

.word $23E1
.byte 1
.byte $40

.word $23E8
.byte 8|StripeImageCommand_Repeat
.byte $A5

.word $23F0
.byte 8
.byte $AA,$AA,$AA,$FA,$FA,$BA,$FA,$BA

.word $23F8
.byte 8|StripeImageCommand_Repeat
.byte $0A

.word $2348
.byte 3
.byte $11,$12,$1D

.byte StripeImageWriteCommand_Stop

Layout_ClayShooting_E26C:
.word $2220
.byte 32|StripeImageCommand_Repeat
.byte $B6

.word $2240
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $2260
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $2280
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $22A0
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $22C0
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $22E0
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $2300
.byte 32|StripeImageCommand_Repeat
.byte $B5

.word $2185
.byte 5
.byte $AC,$AD,$AE,$C1,$C2

.word $21A4
.byte 7
.byte $AF,$B0,$B5,$B5,$C3,$C4,$C5

.word $21B0
.byte 4
.byte $EC,$B4,$B8,$B9

.word $21C2
.byte 11
.byte $B1,$B2,$B5,$B5,$B5,$B5,$B5,$C6
.byte $C7,$C8,$C9

.word $21CE
.byte 15
.byte $CA,$B4,$B5,$B5,$B5,$ED,$BA,$BB
.byte $BC,$B3,$EB,$B0,$BE,$BB,$BF

.word $21E2
.byte 25|StripeImageCommand_Repeat
.byte $B5

.word $21E0
.byte 2
.byte $B3,$B4

.word $21EB
.byte 4
.byte $CB,$C4,$CC,$CD

.word $21F5
.byte 1
.byte $BD

.word $21FB
.byte 5
.byte $BD,$CB,$C4,$C8,$BB

.word $2200
.byte 29|StripeImageCommand_Repeat
.byte $B5

.word $220D
.byte 3
.byte $CE,$CF,$D0

.word $221D
.byte 3
.byte $C3,$C0,$C0

.word $2260
.byte 6
.byte $99,$9A,$9B,$9C,$99,$9A

.word $2280
.byte 6
.byte $9D,$9E,$9F,$A0,$9D,$9E

.word $22A0
.byte 6
.byte $A1,$A2,$A3,$A4,$A1,$A2

.word $22C0
.byte 6
.byte $A5,$A6,$A5,$A7,$A5,$A6

.word $2247
.byte 4|StripeImageWriteCommand_DrawVert
.byte $9B,$9F,$A3,$A5

.word $2248
.byte 4|StripeImageWriteCommand_DrawVert
.byte $9C,$A0,$A4,$A6

.word $224A
.byte 2
.byte $A8,$A9

.word $226A
.byte 2
.byte $AA,$AB

.word $2258
.byte 5
.byte $A8,$A9,$A8,$A8,$A8

.word $2277
.byte 6
.byte $A8,$AA,$AB,$AA,$AA,$AA

.word $2274
.byte 2|StripeImageWriteCommand_DrawVert
.byte $A9,$AB

.word $2297
.byte 1
.byte $AA

.word $22BA
.byte 4
.byte $99,$9A,$9B,$9C

.word $22DA
.byte 4
.byte $9D,$9E,$9F,$A0

.word $22FA
.byte 4
.byte $A1,$A2,$A3,$A4

.word $2320
.byte 32|StripeImageCommand_Repeat
.byte $C0

.word $2340
.byte 32|StripeImageCommand_Repeat
.byte $C0

.word $2360
.byte 32|StripeImageCommand_Repeat
.byte $C0

.word $2380
.byte 32|StripeImageCommand_Repeat
.byte $C0

.word $23A0
.byte 32|StripeImageCommand_Repeat
.byte $C0

.word $2300
.byte 32|StripeImageCommand_Repeat
.byte $DD

.word $2308
.byte 16|StripeImageCommand_Repeat
.byte $DF

.word $2307
.byte 1
.byte $DE

.word $2318
.byte 1
.byte $E0

.word $2328
.byte 22|StripeImageCommand_Repeat
.byte $E3

.word $2348
.byte 22|StripeImageCommand_Repeat
.byte $B7

.word $2368
.byte 22|StripeImageCommand_Repeat
.byte $B7

.word $2388
.byte 22|StripeImageCommand_Repeat
.byte $E9

.word $2358
.byte 6|StripeImageCommand_Repeat
.byte $00

.word $2322
.byte 6
.byte $E2,$E3,$E3,$E3,$E4,$E2

.word $2342
.byte 6
.byte $E5,$D9,$D9,$D9,$E7,$E5

.word $2362
.byte $06
.byte $E5,$DA,$DB,$DC,$E7,$E5

.word $2382
.byte $06
.byte $E8,$E9,$E9,$E9,$EA,$E8

.word $234C
.byte 10|StripeImageCommand_Repeat
.byte $D4

.word $2303
.byte 2
.byte $1B,$27

.word $2336
.byte 4|StripeImageWriteCommand_DrawVert
.byte $E4,$E7,$E7,$EA

.word $2337
.byte 4|StripeImageWriteCommand_DrawVert
.byte $E2,$E5,$E5,$E8

.word $233E
.byte 4|StripeImageWriteCommand_DrawVert
.byte $E4,$E7,$E7,$EA

.word $2379
.byte 5
.byte $1C,$0C,$18,$1B,$0E

.word $23C0
.byte 32|StripeImageCommand_Repeat
.byte $00

.word $23C8
.byte 16|StripeImageCommand_Repeat
.byte $FF

.word $23E0
.byte 8|StripeImageCommand_Repeat
.byte $50

.word $23E8
.byte 8|StripeImageCommand_Repeat
.byte $55

.word $23F0
.byte 8
.byte $AA,$AA,$AA,$FA,$FA,$BA,$FA,$BA

.word $23F8
.byte 8|StripeImageCommand_Repeat
.byte $0A

.word $2348
.byte 3
.byte $11,$12,$1D

.byte StripeImageWriteCommand_Stop

Layout_TitleScreen_E404:
.word $2064
.byte 19|StripeImageCommand_Repeat 
.byte $B7

.word $2084
.byte 19|StripeImageCommand_Repeat
.byte $B7

.word $20A4
.byte 19|StripeImageCommand_Repeat
.byte $B7

.word $20C4
.byte 19|StripeImageCommand_Repeat
.byte $B7

.word $20E4
.byte 19|StripeImageCommand_Repeat
.byte $B7

.word $2086
.byte 2|StripeImageWriteCommand_DrawVert
.byte $F5,$F4

.word $2067
.byte 5|StripeImageWriteCommand_DrawVert
.byte $F0,$B7,$B7,$B7,$F1

.word $2068
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $206B
.byte 3|StripeImageWriteCommand_DrawVert
.byte $24,$24,$F4

.word $20E9
.byte 4
.byte $F3,$B7,$B7,$F1

.word $206D
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $206E
.byte 4
.byte $F2,$B7,$B7,$F0

.word $20EE
.byte 4
.byte $F3,$B7,$B7,$F1

.word $2090
.byte 2
.byte $F5,$F6

.word $20B0
.byte 2
.byte $F4,$F7

.word $2072
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $2075
.byte 5|StripeImageWriteCommand_DrawVert
.byte $24,$F8,$B7,$F9,$24

.word $2096
.byte 2|StripeImageWriteCommand_DrawVert
.byte $F1,$F0

.word $2124
.byte 24|StripeImageCommand_Repeat
.byte $FB

.word $2149
.byte 19|StripeImageCommand_Repeat
.byte $B7

.word $2169
.byte 18|StripeImageCommand_Repeat 
.byte $B7

.word $2189
.byte 18|StripeImageCommand_Repeat
.byte $B7

.word $21A9
.byte 18|StripeImageCommand_Repeat
.byte $B7

.word $21C9
.byte 18|StripeImageCommand_Repeat
.byte $B7

.word $214B
.byte $85
.byte $24,$FA,$B7,$24,$24

.word $214D
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $21CE
.byte 4
.byte $F3,$B7,$B7,$F1

.word $2150
.byte 3|StripeImageWriteCommand_DrawVert
.byte $24,$24,$F4

.word $2152
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $2155
.byte $85
.byte $24,$F0,$B7,$F9,$24

.word $2157
.byte 5|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $2178
.byte 4|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $217B
.byte 4|StripeImageWriteCommand_DrawVert|StripeImageCommand_Repeat
.byte $24

.word $2228
.byte 15
.byte $10,$0A,$16,$0E,$24,$0A,$24,$24
.byte $24,$01,$24,$0D,$1E,$0C,$14

.word $2268
.byte 16
.byte $10,$0A,$16,$0E,$24,$0B,$24,$24
.byte $24,$02,$24,$0D,$1E,$0C,$14,$1C

.word $22A8
.byte $16
.byte $10,$0A,$16,$0E,$24,$0C,$24,$24
.byte $24,$0C,$15,$0A,$22,$24,$1C,$11
.byte $18,$18,$1D,$12,$17,$10

.word $2307
.byte 11
.byte $1D,$18,$19,$24,$1C,$0C,$18,$1B
.byte $0E,$24,$27

.word $2345
.byte 22
.byte $25,$01,$09,$08,$04,$24,$17,$12
.byte $17,$1D,$0E,$17,$0D,$18,$24,$0C
.byte $18,$EE,$15,$1D,$0D,$EF

.word $23C0
.byte 32|StripeImageCommand_Repeat
.byte $00

.word $23E0
.byte 2|StripeImageCommand_Repeat
.byte $55

.word $23E2
.byte 6|StripeImageCommand_Repeat
.byte $FF

.word $23EA
.byte 6|StripeImageCommand_Repeat
.byte $FF

.word $23F0
.byte 8|StripeImageCommand_Repeat
.byte $5A

.word $23F8
.byte 8|StripeImageCommand_Repeat
.byte $00

.word $23E1
.byte 1
.byte $55

.word $23E9
.byte 1
.byte $55

.byte StripeImageWriteCommand_Stop

;palettes! i think
POINTERS_E532:
.word Palette_TitleScreen_E540
.word Palette_DuckGame_E558
.word Palette_ClayShooting_E57C
.word Palette_ZapperShot1_E5A0
.word Palette_ZapperShot2_E5A9
.word Palette_FlyAwayBackgroundRestore_E5C7
.word Palette_FlyAwayDog_E5B4

Palette_TitleScreen_E540:
.word $3F00
.byte 16
.byte $0F,$2C,$27,$0F,$0F,$0F,$30,$30
.byte $0F,$0F,$2A,$2A,$0F,$0F,$27,$27

.word $3F10
.byte 16|StripeImageCommand_Repeat
.byte $0F

.byte StripeImageWriteCommand_Stop

Palette_DuckGame_E558:
.word $3F00
.byte 32
.byte $21,$07,$29,$0A,$21,$30,$29,$0A
.byte $21,$0F,$29,$18,$21,$0F,$30,$16

.byte $21,$30,$0A,$0F,$21,$30,$26,$0F
.byte $21,$30,$17,$0F,$21,$07,$17,$0F

.byte StripeImageWriteCommand_Stop

Palette_ClayShooting_E57C:
.word $3F00
.byte 32
.byte $2C,$29,$19,$09,$2C,$07,$29,$1A
.byte $2C,$0F,$29,$10,$2C,$0F,$30,$16

.byte $2C,$30,$0F,$0F,$2C,$30,$16,$07
.byte $2C,$30,$17,$0F,$2C,$07,$17,$0F

.byte StripeImageWriteCommand_Stop

;shroud everything in dark. this is only really used for the title screen, to make zapper shot activate selected game
Palette_ZapperShot1_E5A0:
.word $3F00
.byte 32|StripeImageCommand_Repeat
.byte $0F

.word $3F03
.byte 1                                                        ;and set BG palette 0 color 4 as white. everything will be blank at this point, which means shooting anywhere on-screen will trigger zapper detection
.byte $30

.byte StripeImageWriteCommand_Stop

;keep everything in dark. used to detect sprites with zapper
Palette_ZapperShot2_E5A9:
.word $3F00
.byte 32|StripeImageCommand_Repeat
.byte $0F

.word $3F11
.byte 3                                                        ;and set sprite palette 0 colors 2-4 as white for an understandable reason (zapper detection)
.byte $30,$30,$30

.byte StripeImageWriteCommand_Stop

;used for when the dog pops up, only to laugh at you.
Palette_FlyAwayDog_E5B4:
.word $3F10
.byte $10
.byte $21,$30,$0A,$0F,$21,$30,$26,$0F
.byte $21,$30,$17,$0F,$21,$07,$17,$0F

;used to restore background palette after it changes for "FLY AWAY"
Palette_FlyAwayBackgroundRestore_E5C7:
.word $3F00
.byte $10
.byte $21,$07,$29,$0A,$21,$30,$29,$0A
.byte $21,$0F,$29,$18,$21,$0F,$30,$16

.byte StripeImageWriteCommand_Stop

;VRAM location of the score counter
ScorePointerVRAMLoc_E5DB:
.word $2358

;unknown
.byte $06,$00

;first byte is unknown. the rest are score values
;by default all top scores are the same 
DefaultTopScores_E5DF:
.byte $00,$01,$20,$00
.byte $00,$01,$20,$00
.byte $00,$01,$20,$00

;initial duck values. (to be broken down in the same way as in Mario Bros. NES)
DuckEntity_InitialVariables_E5EB:
.byte $01,$01,$A8,$80,$00,$00,$00,$3F
.byte $01,$00,$03,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$03,$00,$00,$00,$00

POINTERS_E60B:
.word DATA_ED76
.word DATA_ED98
.word DATA_EDB0
.word DATA_EDBC
.word DATA_EDD4
.word DATA_EDFA
.word DATA_EE1A
.word DATA_EE34
.word DATA_EE4C
.word DATA_EE68
.word DATA_EE82
.word DATA_EE96
.word DATA_EEB8
.word DATA_EED0
.word DATA_EEF4
.word DATA_EF0E
.word DATA_EF2A
.word DATA_EF2D
.word DATA_EF30
.word DATA_EF33
.word DATA_EF36
.word DATA_EF39
.word DATA_EF3C
.word DATA_EF3F
.word DATA_EF42
.word DATA_EF45
.word DATA_EF48
.word DATA_EF4B
.word DATA_EF4E
.word DATA_EF51
.word DATA_EF54
.word DATA_EF57

;offsets for tables!!
DATA_E64B:
.byte DATA_E661-DATA_E661
.byte DATA_E664-DATA_E661
.byte DATA_E671-DATA_E661
.byte DATA_E678-DATA_E661
.byte DATA_E685-DATA_E661
.byte DATA_E688-DATA_E661
.byte DATA_E695-DATA_E661
.byte DATA_E69C-DATA_E661
.byte UNUSED_E6A9-DATA_E661
.byte DATA_E6AC-DATA_E661
.byte DATA_E6B9-DATA_E661
.byte DATA_E6C0-DATA_E661
.byte DATA_E6CD-DATA_E661
.byte DATA_E6D0-DATA_E661
.byte DATA_E6DD-DATA_E661
.byte DATA_E6E4-DATA_E661
.byte DATA_E6F1-DATA_E661
.byte UNUSED_E6F6-DATA_E661
.byte DATA_E6F9-DATA_E661
.byte DATA_E6FC-DATA_E661
.byte DATA_E6FF-DATA_E661
.byte UNUSED_E702-DATA_E661

DATA_E661:
.byte $FF,$00
.byte $AA

DATA_E664:
.byte $FF,$01
.byte $FF,$00
.byte $FF,$00
.byte $FF,$01
.byte $FF,$00
.byte $00,$00
.byte $AA

DATA_E671:
.byte $FF,$01
.byte $FF,$01
.byte $00,$00
.byte $AA

DATA_E678:
.byte $00,$01
.byte $FF,$01
.byte $00,$01
.byte $FF,$01
.byte $00,$01
.byte $00,$00
.byte $AA

DATA_E685:
.byte $00,$01
.byte $AA

DATA_E688:
.byte $00,$01
.byte $01,$01
.byte $00,$01
.byte $01,$01
.byte $00,$01
.byte $00,$00
.byte $AA

DATA_E695:
.byte $01,$01
.byte $01,$01
.byte $00,$00
.byte $AA

DATA_E69C:
.byte $01,$01
.byte $01,$00
.byte $01,$00
.byte $01,$01
.byte $01,$00
.byte $00,$00
.byte $AA

UNUSED_E6A9:
.byte $01,$00
.byte $AA

DATA_E6AC:
.byte $01,$FF
.byte $01,$00
.byte $01,$00
.byte $01,$FF
.byte $01,$00
.byte $00,$00
.byte $AA

DATA_E6B9:
.byte $01,$FF
.byte $01,$FF
.byte $00,$00
.byte $AA

DATA_E6C0:
.byte $00,$FF
.byte $01,$FF
.byte $00,$FF
.byte $01,$FF
.byte $00,$FF
.byte $00,$00
.byte $AA

DATA_E6CD:
.byte $00,$FF
.byte $AA

DATA_E6D0:
.byte $00,$FF
.byte $FF,$FF
.byte $00,$FF
.byte $FF,$FF
.byte $00,$FF
.byte $00,$00
.byte $AA

DATA_E6DD:
.byte $FF,$FF
.byte $FF,$FF
.byte $00,$00
.byte $AA

DATA_E6E4:
.byte $FF,$FF
.byte $FF,$00
.byte $FF,$00
.byte $FF,$FF
.byte $FF,$00
.byte $00,$00
.byte $AA

DATA_E6F1:
.byte $02,$01
.byte $02,$FF
.byte $AA

UNUSED_E6F6:
.byte $FF,$FE
.byte $AA

DATA_E6F9:
.byte $FE,$FF
.byte $AA

DATA_E6FC:
.byte $FE,$00
.byte $AA

DATA_E6FF:
.byte $FE,$01
.byte $AA

UNUSED_E702:
.byte $FF,$02
.byte $AA

DATA_E705:
.byte $02,$00,$02,$01,$04,$02,$FE

DATA_E70C:
.byte $02,$03,$02,$04,$04,$05,$FE

DATA_E713:
.byte $14,$09
.byte $FF,$06,$01

DATA_E718:
.byte $04,$0A,$04,$0B,$FE

DATA_E71D:
.byte $02,$06,$02,$07,$04,$08,$FE

;duck palettes
DuckPalettes_E724:
;black/green duck
.byte $21,$30,$0A,$0F
.byte $21,$30,$26,$0F

;blue/purple duck
.byte $21,$30,$14,$02
.byte $21,$30,$26,$02

;red
.byte $21,$30,$0F,$05
.byte $21,$30,$26,$05

DATA_E73C:
.byte $04,$08

;unknown
.byte $0C

.byte $08,$0C,$10,$08,$0C,$10,$0C,$10
.byte $14,$10,$14,$18,$10,$14,$18
.byte $14,$18,$1C,$14,$1C,$1C,$18,$1C
.byte $1C,$1C,$1C,$20

DATA_E75A:
.byte $10,$14,$14,$18,$18,$1C,$1C,$20
.byte $20,$24,$24,$28

;Duck Color configurations. Low nibble is the first duck's palette index, high nibble is for the second one
DuckColorConfigurations_E766:
.byte $00                                                      ;both green
.byte $01                                                      ;first green, second purple
.byte $10                                                      ;first purple, second green
.byte $11                                                      ;both purple
.byte $12                                                      ;first purple, second red
.byte $20                                                      ;first red, second green
.byte $21                                                      ;first red, second purple
.byte $22                                                      ;both red

;some initial variables for the dog.
DogEntity_InitialVariables_E76E:
.byte $01,$01,$AC,$18,$00,$00,$00,$BF
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$60,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00

DATA_E78E:
.byte $06,$0C,$06,$0D,$06,$0E,$06,$0F,$FE

;unknown
.byte $00

DATA_E798:
.byte $08,$0C,$08,$10,$08,$0C,$08,$10
.byte $08,$0C,$08,$10,$FF,$02,$01

DATA_E7A7:
.byte $10
.byte $11,$FF,$08,$01

DATA_E7AC:
.byte $90,$03,$12,$83
.byte $01,$12,$83,$01,$12,$83,$01,$12
.byte $83,$01,$12,$82,$01,$12,$82,$01
.byte $12,$82,$01,$12,$82,$01,$12,$81
.byte $01,$12,$82,$01,$12,$81,$01,$12
.byte $81,$01,$12,$81,$01,$12,$81,$01
.byte $12,$81,$01,$12,$81,$01,$12,$84
.byte $01,$13,$00,$01,$13,$81,$01,$13
.byte $00,$01,$13,$81,$01,$13,$00,$01
.byte $13,$00,$01,$13,$00,$01,$13,$81
.byte $01,$13,$FD,$00,$01,$13,$00,$01
.byte $13,$00,$01,$13,$00,$01,$13,$01
.byte $01,$13,$00,$01,$13,$01,$01,$13
.byte $00,$01,$13,$01,$01,$13,$01,$01
.byte $13,$01,$01,$13,$02,$01,$13,$02
.byte $01,$13,$02,$01,$13,$03,$01,$13
.byte $03,$01,$13,$04,$00,$13,$04,$00
.byte $13,$05,$00,$13,$05,$00,$13,$05
.byte $00,$13,$05,$00,$13,$05,$00,$13
.byte $05,$00,$13,$FF,$0E,$00

DATA_E846:
.byte $04,$81
.byte $16,$04,$81,$17,$04,$81,$16,$04
.byte $81,$17,$04,$81,$16,$04,$81,$17
.byte $04,$81,$16,$04,$81,$17,$04,$81
.byte $16,$04,$81,$17,$04,$80,$16,$04
.byte $80,$17,$04,$80,$16,$04,$80,$17
.byte $04,$80,$16,$04,$80,$17,$04,$80
.byte $16,$04,$80,$17,$04,$02,$16,$04
.byte $02,$17,$04,$02,$16,$04,$02,$17
.byte $04,$02,$16,$04,$02,$17,$04,$02
.byte $16,$FF,$0F,$20

DATA_E894:
.byte $14,$82,$14,$10
.byte $00,$14,$14,$02,$14,$14,$02,$14
.byte $FF,$0F,$20

DATA_E8A3:
.byte $14,$82,$15,$10,$00,$15,$14,$02
.byte $15,$14,$02,$15,$FF,$0F,$20

DATA_E8B2:
.byte $04,$81,$16,$04,$81,$17
.byte $04,$81,$16,$04,$81,$17,$04,$81
.byte $16,$04,$81,$17,$04,$81,$16,$04
.byte $81,$17,$04,$81,$16,$04,$81,$17
.byte $04,$80,$16,$04,$80,$17,$04,$80
.byte $16,$FC

ClayPigeonEntity_InitialVariables_E8DA:
.byte $01,$02,$00,$00,$00,$00,$00,$4F
.byte $00,$00,$00,$00,$00,$00,$00,$01
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$02,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $F9,$FE,$FB,$FE,$FF,$FE,$FF,$FA
.byte $FB,$FA,$F9,$FA,$00,$00,$00,$00
.byte $FA,$FD,$FB,$FD,$FB,$FD,$FC,$FD
.byte $FC,$FB,$FB,$FB,$FB,$FB,$FA,$FB

DATA_E92A:
.byte $18,$18,$19,$1A,$1A,$1B,$1C,$1D
.byte $1E,$1E,$1F,$1F,$20,$20,$21,$21
.byte $22,$22,$22,$22,$23,$23,$23,$23

;unknown
.byte $23,$23

;clay pigeon's zapper shape, depending on its distance
ClayPigeonZapperShapes_E944:
.byte $00,$00,$00,$01,$01,$01,$02,$02
.byte $02,$02,$03,$03,$03,$03,$04,$04
.byte $04,$04,$04,$05,$05,$05,$05,$05
.byte $05,$05,$05,$05,$05,$05

;unknown
.byte $05,$05,$05,$05,$05,$05

DATA_E968:
.byte $00,$00,$C0,$15,$1E,$2C
.byte $01,$00,$C0,$0A,$1E,$30
.byte $03,$00,$D0,$10,$1E,$25
.byte $04,$00,$C0,$00,$1C,$30
.byte $06,$00,$C0,$0F,$1C,$30
.byte $08,$00,$C0,$F6,$1C,$30
.byte $09,$00,$C0,$0C,$1C,$30
.byte $0A,$00,$C0,$F4,$1C,$30
.byte $0C,$00,$C0,$F4,$1E,$2D
.byte $0E,$00,$C0,$08,$1C,$30
.byte $0A,$00,$C0,$00,$1D,$30
.byte $11,$00,$B8,$EE,$20,$33
.byte $13,$00,$C8,$F0,$1C,$2A
.byte $04,$80,$C8,$F7,$1C,$2D
.byte $0A,$80,$C8,$0B,$1C,$2D
.byte $0F,$80,$C6,$F3,$21,$26

;note: the seventh byte of each entry is unused for some reason.
DATA_E9C8:
.byte $14,$14,$10,$10,$10,$08,$04,$00 
.byte $18,$14,$14,$10,$0C,$08,$04,$00
.byte $1C,$18,$18,$14,$10,$0C,$08,$04
.byte $20,$1C,$18,$14,$10,$0C,$08,$04
.byte $24,$20,$1C,$18,$14,$0C,$08,$04
.byte $28,$24,$20,$1C,$14,$10,$0C,$08
.byte $2C,$28,$24,$20,$18,$10,$0C,$08

DATA_EA00:
.byte $01,$01,$01,$01,$02,$01,$01,$01
.byte $02,$01,$02,$01,$02,$02,$02,$01
.byte $02,$02,$02,$02,$03,$02,$03,$02
.byte $03,$03,$03,$03,$04,$03,$04,$03
.byte $04,$04,$04,$04,$05,$05,$05,$05
.byte $06,$06,$06,$06,$07,$07,$07,$07

DATA_EA30:
.byte $ED,OAMProp_Palette0|OAMProp_XFlip
.byte $ED,OAMProp_Palette0|OAMProp_XFlip
.byte $ED,OAMProp_Palette0|OAMProp_XFlip|OAMProp_YFlip
.byte $ED,OAMProp_Palette0|OAMProp_YFlip
.byte $ED,OAMProp_Palette0
.byte $ED,OAMProp_Palette0

.byte $ED,OAMProp_Palette0                                     ;\unused?
.byte $ED,OAMProp_Palette0                                     ;/

.byte $EE,OAMProp_Palette0|OAMProp_XFlip
.byte $EE,OAMProp_Palette0|OAMProp_XFlip
.byte $EE,OAMProp_Palette0|OAMProp_XFlip
.byte $EE,OAMProp_Palette0|OAMProp_XFlip
.byte $EE,OAMProp_Palette0
.byte $EE,OAMProp_Palette0
.byte $EE,OAMProp_Palette0
.byte $EE,OAMProp_Palette0

DATA_EA50:
.byte $06,$05,$04,$03,$03,$02,$03,$03
.byte $02,$02,$02,$02,$02,$01,$01,$02
.byte $01,$01,$01,$01,$01,$01,$01,$00
.byte $01,$01,$01,$01,$00,$01,$01,$01
.byte $00,$01,$01,$00,$01,$00,$01,$00
.byte $BB,$01,$00,$01,$00,$BB,$01,$00
.byte $01,$00,$BB,$01,$00,$01,$BB,$00
.byte $01,$BB,$00,$00,$BB,$00,$AA

DATA_EA8F:
.byte $02
.byte $02,$01,$02,$02,$01,$01,$01,$01
.byte $01,$00,$01,$00,$01,$00,$01,$00
.byte $01,$BB,$00,$00,$01,$BB,$00,$00
.byte $01,$BB,$00,$00,$BB,$01,$00,$00
.byte $BB,$01,$00,$BB,$00,$00,$BB,$BB
.byte $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB
.byte $BB,$AA

DATA_EAC2:
.byte $01,$01,$00,$01,$01,$01,$00,$01
.byte $00,$01,$00,$00,$01,$00,$00,$00
.byte $00,$01

;unknown
.byte $00

;known
.byte $00,$00,$00

;unknown
.byte $00

;known
.byte $01,$00,$00

;unknown
.byte $00

;known
.byte $00,$00

;unknown
.byte $00

;known
.byte $01,$00,$00

;unknown
.byte $00

;known
.byte $00,$00

;unknown
.byte $00

;known
.byte $00,$00

;unknown
.byte $00,$00,$00,$00,$00,$00,$00,$00
.byte $00

DATA_EAF2:
.byte $00,$06,$00,$FF

;unknown
.byte $02,$05,$02,$FF


.byte $08,$04,$06,$FF,$0E,$04,$07,$FF
.byte $12,$05,$08,$FF,$14,$04,$0A,$FF
.byte $FF,$00,$00,$02,$FF,$00,$00,$04
.byte $FF,$00,$00,$06,$FF,$00,$00,$0A
.byte $FF,$00,$00,$10,$FF,$00,$00,$14

DATA_EB22:
.byte $02,$04,$06,$0A,$0C,$0E

DATA_EB28:
.byte $01,$03,$05,$07,$09,$0B,$0D,$0F

;this is used to draw different sprite shapes for zapper detection (typically rectangles)
ZapperShapeSpriteGFXPointers_EB30:
.word DATA_EB4A
.word DATA_EB5D
.word DATA_EB70
.word DATA_EB7D
.word DATA_EB86
.word DATA_EB8F
.word UNUSED_EB92                                              ;unused
.word UNUSED_EB92                                              ;unused
.word UNUSED_EB92                                              ;unused
.word DATA_EB95
.word DATA_EBB6
.word DATA_EBC9
.word UNUSED_EBDC                                              ;unused

;x-offset, y-offset
;$AA - terminator command
DATA_EB4A:
.byte $F4,$F4
.byte $F4,$FC
.byte $F4,$04
.byte $FC,$F4
.byte $FC,$FC
.byte $FC,$04
.byte $04,$F4
.byte $04,$FC
.byte $04,$04
.byte $AA

DATA_EB5D:
.byte $F7,$F5
.byte $F7,$FD
.byte $F7,$03
.byte $FF,$F5
.byte $FF,$FD
.byte $FF,$03
.byte $01,$F5
.byte $01,$FD
.byte $01,$03
.byte $AA

DATA_EB70:
.byte $F9,$F7
.byte $F9,$FF
.byte $F9,$01
.byte $FF,$F7
.byte $FF,$FF
.byte $FF,$01
.byte $AA

DATA_EB7D:
.byte $FA,$F8
.byte $FA,$00
.byte $FE,$F8
.byte $FE,$00
.byte $AA

DATA_EB86:
.byte $FA,$FA
.byte $FA,$FE
.byte $FE,$FA
.byte $FE,$FE
.byte $AA

DATA_EB8F:
.byte $FC,$FC
.byte $AA

;unknown. duplicate of the previous entry?
UNUSED_EB92:
.byte $FC,$FC
.byte $AA

DATA_EB95:
.byte $F0,$F0
.byte $F0,$F8
.byte $F0,$00
.byte $F0,$08
.byte $F8,$F0
.byte $F8,$F8
.byte $F8,$00
.byte $F8,$08
.byte $00,$F0
.byte $00,$F8
.byte $00,$00
.byte $00,$08
.byte $08,$F0
.byte $08,$F8
.byte $08,$00
.byte $08,$08
.byte $AA

DATA_EBB6:
.byte $F4,$F5,$F4,$FD,$F4,$03,$FC,$F5
.byte $FC,$FD,$FC,$03,$04,$F5,$04,$FD
.byte $04,$03,$AA

DATA_EBC9:
.byte $F5,$F7
.byte $F5,$FF
.byte $F5,$01
.byte $FD,$F7
.byte $FD,$FF
.byte $FD,$01
.byte $03,$F7
.byte $03,$FF
.byte $03,$01
.byte $AA

UNUSED_EBDC:
.byte $F6,$F8
.byte $F6,$00
.byte $FE,$F8
.byte $FE,$00
.byte $02,$F8
.byte $02,$00
.byte $AA

;How much score is awarded for getting perfect hit amount. This is tens thousands and hundreds thousands 
PerfectScore_TensThousands_EBE9:
.byte $01,$01,$02,$03

;same as above, but hundreds and thousands
PerfectScore_Thousands_EBED:
.byte $00,$50,$00,$00

;what kind of score reward to give, depending on the duck color and difficulty
DuckScoreRewardIndexes_EBF1:
.byte ScoreReward_500,ScoreReward_1000,ScoreReward_1500
.byte ScoreReward_800,ScoreReward_1600,ScoreReward_2400
.byte ScoreReward_1000,ScoreReward_2000,ScoreReward_3000

;score values from sprite score pop-ups.
ScoreSpriteRewards_EBFA:
.byte $05,$08,$10,$15,$16,$20,$24,$30

;amount of hits required to clear the stage
;$FF - infinitely repeat previous value
RequiredHitAmountPerRound_EC02:
.byte $06,$06,$06,$06,$06,$06,$06,$06                          ;rounds 1-8
.byte $06,$06,$07,$07,$08,$08,$09,$09                          ;rounds 9-16
.byte $09,$09,$09,$0A,$FF                                      ;rounds 17-20 and beyond

DATA_EC17:
.byte $00,$08,$10,$18,$18,$20,$20,$28

DATA_EC1F:
.byte $28,$01,$80,$00,$00,$AA,$01,$40
.byte $02,$10,$03,$08,$02,$10,$03,$08
.byte $02,$10,$03,$08,$02,$10,$03,$08
.byte $00,$00,$AA

;DATA POINTERS, POG!!!!!
;messages
MessageTilemapPointers_EC3A:
.word Message_ROUND_EC4A
.word Message_GO_EC70
.word Message_GO_Blank_EC82
.word Message_GOOD_EC8B
.word Message_PERFECT_ECB1
.word Message_FLY_AWAY_ECE6
.word Message_PAUSE_ED07
.word Message_GAME_OVER_ED3C

;format:
;first byte - VRAM location, low byte (the message's high byte is hardcoded to $20)
;second byte - amount of tile to load into buffer transfer
;the rest are buffer transfer tile data:
;first byte - amount of rows to draw and amount of tiles on each row. high nibble - rows, low nibble - tile amount
;the rest are tiles to draw
;then amount of rows and tiles on said rows, repeat until done.
Message_ROUND_EC4A:
.byte $CD
.byte @End-@Message

@Message:
.byte $57
.byte $FF,$13,$13,$13,$13,$13,$1A
.byte $D8,'R'-$37,'O'-$37,'U'-$37,'N'-$37,'D'-$37,$21
.byte $D8,$B7,$B7,$B7,$B7,$B7,$21
.byte $D8,$B7,$B7,$B7,$B7,$B7,$21
.byte $23,$FC,$FC,$FC,$FC,$FC,$FD

@End:

Message_GO_EC70:
.byte $EE
.byte @End-@Message

@Message:
.byte $35
.byte $B7,$B7,$B7,$B7,$B7
.byte $B7,'G'-$37,'O'-$37,$FE,$B7
.byte $B7,$B7,$B7,$B7,$B7

@End:

;used for GO!! blinking
Message_GO_Blank_EC82:
.byte $EF
.byte @End-@Message-3

@Message:
.byte $23
.byte $B7,$B7,$B7
.byte $B7,$B7,$B7                                              ;second row is unused for some reason, despite setting two rows with 3 tiles each. it doesn't seem to lead to any glitches at least.

@End:

Message_GOOD_EC8B:
.byte $CD
.byte @End-@Message

@Message:
.byte $57
.byte $FF,$13,$13,$13,$13,$13,$1A
.byte $D8,$B7,$B7,$B7,$B7,$B7,$21
.byte $D8,'G'-$37,'O'-$37,'O'-$37,'D'-$37,$FE,$21
.byte $D8,$B7,$B7,$B7,$B7,$B7,$21
.byte $23,$FC,$FC,$FC,$FC,$FC,$FD

@End:

Message_PERFECT_ECB1:
.byte $CC
.byte @End-@Message

@Message:
.byte $5A
.byte $FF,$13,$13,$13,$13,$13,$13,$13,$13,$1A
.byte $D8,'P'-$37,'E'-$37,'R'-$37,'F'-$37,'E'-$37,'C'-$37,'T'-$37,$FE,$21
.byte $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
.byte $D8,$B7,$B7,$B7,$00,$00,$00,$B7,$B7,$21
.byte $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End:

Message_FLY_AWAY_ECE6:
.byte $EC
.byte @End-@Message

@Message:
.byte $3A
.byte $FF,$13,$13,$13,$13,$13,$13,$13,$13,$1A
.byte $D8,'F'-$37,'L'-$37,'Y'-$37,$B7,'A'-$37,'W'-$37,'A'-$37,'Y'-$37,$21
.byte $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End:

;for some reason, the tilemap for the pause message is wider than its actual appearance, there are blank tiles on the right and left. was it wider before?
Message_PAUSE_ED07:
.byte $CC
.byte @End-@Message

@Message:
.byte $5A
.byte $24,$FF,$13,$13,$13,$13,$13,$1A,$24,$24
.byte $24,$D8,$B7,$B7,$B7,$B7,$B7,$21,$24,$24
.byte $24,$D8,'P'-$37,'A'-$37,'U'-$37,'S'-$37,'E'-$37,$21,$24,$24
.byte $24,$D8,$B7,$B7,$B7,$B7,$B7,$21,$24,$24
.byte $24,$23,$FC,$FC,$FC,$FC,$FC,$FD,$24,$24

@End:

Message_GAME_OVER_ED3C:
.byte $AB
.byte @End-@Message

@Message:
.byte $5B
.byte $FF,$13,$13,$13,$13,$13,$13,$13,$13,$13,$1A
.byte $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
.byte $D8,'G'-$37,'A'-$37,'M'-$37,'E'-$37,$B7,'O'-$37,'V'-$37,'E'-$37,'R'-$37,$21
.byte $D8,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$B7,$21
.byte $23,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FD

@End:

DATA_ED76:
.byte $9C,$18,$14,$10,$01
.byte $10,$02,$20,$03,$08,$02,$08,$01
.byte $18,$00,$10,$0E,$08,$0D,$20,$0C
.byte $08,$0D,$08,$0C,$B0,$0B,$80,$03
.byte $40,$02,$FF,$08,$00

DATA_ED98:
.byte $88,$10,$12,$28,$0F,$08,$00,$10
.byte $01,$08,$02,$48,$03,$20,$04,$70
.byte $0C,$30,$0D,$30,$0E,$FF,$08,$00

DATA_EDB0:
.byte $90,$20,$12,$60,$0D,$90,$03,$78
.byte $02

;unknown
.byte $FF,$08,$00

DATA_EDBC:
.byte $78,$20,$13,$40,$0F,$10,$0E,$20
.byte $0D,$18,$0B,$20,$0A,$50,$06,$28
.byte $04,$38,$03,$78,$02,$FF,$08,$00

DATA_EDD4:
.byte $80,$10,$12,$20,$0D,$08,$0E,$08
.byte $0F,$20,$03,$10,$02,$08,$0E,$20
.byte $0D,$08,$0E,$08,$0F,$08,$01,$08
.byte $03,$30,$04,$40,$05,$80,$0B,$30
.byte $0E,$60,$0F,$FF,$08,$00

DATA_EDFA:
.byte $B8,$08,$14,$10,$04,$08,$03,$08
.byte $02,$08,$01,$08,$00,$08,$0E,$08
.byte $0D,$08,$0C,$50,$0B,$60,$0C,$10
.byte $0D,$40,$02,$70,$01,$FF,$08,$00

DATA_EE1A:
.byte $70,$18,$12,$40,$0D,$10,$0F,$10
.byte $02,$30,$04,$20,$05,$40,$03,$20
.byte $04,$20,$03,$18,$02,$20,$01,$FF
.byte $08,$00

DATA_EE34:
.byte $B0,$10,$14,$28,$02,$18,$01,$30
.byte $00,$10,$0F,$50,$0B,$60,$0C,$20
.byte $0B,$70,$04,$80,$05,$FF,$08,$00

DATA_EE4C:
.byte $5A,$08,$13,$10,$02,$20,$0D,$10
.byte $03,$10,$04,$10,$03,$58,$0D,$28
.byte $03,$48,$04,$10,$03,$48,$0D,$80
.byte $03

;unknown
.byte $FF,$08,$00

DATA_EE68:
.byte $46,$20,$12,$20,$0E,$38,$04,$18
.byte $02,$10,$04,$20,$06,$08,$05,$18
.byte $04,$18,$02,$40,$01,$40,$00

;unknown
.byte $FF,$08,$00

DATA_EE82:
.byte $D0,$2A,$14,$30,$0C,$20,$0B,$20
.byte $0C,$38,$0B,$48,$0C,$40,$02,$30
.byte $0C,$FF,$08,$00

DATA_EE96:
.byte $70,$10,$12,$10,$0D,$20,$0E,$10
.byte $0F,$10,$00,$30,$02,$10,$04,$10
.byte $05,$60,$05,$20,$0B,$40,$0C,$08
.byte $0D,$70,$03,$30,$02,$18,$00

;unknown
.byte $FF,$08,$00

DATA_EEB8:
.byte $C0,$18,$12,$10,$0D,$40,$0B,$38
.byte $0D,$08,$0B,$08,$0C,$10,$0D,$70
.byte $03,$40,$02,$40,$01

;unknown
.byte $FF,$08,$00

DATA_EED0:
.byte $90,$18,$14,$20,$02,$28,$0D,$20
.byte $0B,$20,$0B,$08,$0C,$10,$0D,$20
.byte $03,$20,$05,$20,$04,$10,$02,$10
.byte $03,$70,$0D,$40,$04,$50,$03,$20
.byte $02

;unknown
.byte $FF,$08,$00

DATA_EEF4:
.byte $58,$1C,$14,$24,$02,$08,$00,$48
.byte $0C,$38,$0E,$50,$07,$30,$05,$30
.byte $04,$28,$0D,$20,$02,$80,$01

;unknown
.byte $FF,$08,$00

DATA_EF0E:
.byte $50,$20,$12,$20,$0D,$40,$03,$30
.byte $0C,$40,$03,$30,$04,$38,$05,$08
.byte $0B,$28,$0C,$08,$0D,$40,$03,$4A
.byte $04,$FF,$08,$00

DATA_EF2A:
.byte $40,$E0,$01

DATA_EF2D:
.byte $80,$E0,$02

DATA_EF30:
.byte $D0,$E0,$0E

DATA_EF33:
.byte $38,$E0,$01

DATA_EF36:
.byte $A0,$E0,$0D

DATA_EF39:
.byte $30,$E0,$03

DATA_EF3C:
.byte $B0,$E0,$0E

DATA_EF3F:
.byte $90,$E0,$0F

DATA_EF42:
.byte $40,$E0,$03

DATA_EF45:
.byte $80,$E0,$03

DATA_EF48:
.byte $C8,$E0,$0E

DATA_EF4B:
.byte $50,$E0,$0F

DATA_EF4E:
.byte $B8,$E0,$0D

DATA_EF51:
.byte $20,$E0,$03

DATA_EF54:
.byte $48,$E0,$01

DATA_EF57:
.byte $B8,$E0,$0F

;free space after this

.org $F300                                                   ;this is where sound related matters are
ChannelFrequencyLookup_F300:
.byte $07,$F0,$00                                              ;first 3 bytes are unused

.byte $00,$00,$D4,$00,$C8,$00,$BD,$00
.byte $B2,$00,$A8,$00,$9F,$00,$96,$00
.byte $8D,$00,$85,$00,$7E,$00,$70,$01
.byte $AB,$01,$93,$01,$7C,$01,$67,$01
.byte $52,$01,$3F,$01,$2D,$01,$1C,$01
.byte $0C,$00,$FD,$00,$EE,$00,$E1,$03
.byte $57,$02,$F9,$02,$CF,$02,$A6,$02
.byte $80,$02,$5C,$02,$3A,$02,$1A,$01
.byte $FC,$01,$DF,$01,$C4,$00,$69,$00
.byte $63,$00,$53,$00,$4A

ChannelLengthLookup_F350:
.byte $03,$06
.byte $0C,$18,$30                                              ;unused
.byte $12                                                      ;used
.byte $24                                                      ;unused
.byte $04,$08,$10,$20,$40,$18                                  ;used
.byte $30                                                      ;unused

	
;store to all sound registers related to a single sound channel from a pointer.
;A - sound register offset
;X,Y - pointer to get sound data from, low and high bytes respectively
SetupSoundChannel_Square1_F35E:
	lda #<APU_Square1DutyAndVolume                              ;
	beq SetupSoundChannel_F36C                                  ;

SetupSoundChannel_Triangle_F362:
	lda #<APU_TriangleLinearCounter                             ;
	bne SetupSoundChannel_F36C                                  ;

SetupSoundChannel_Noise_F366:
	lda #<APU_NoiseVolume                                       ;
	bne SetupSoundChannel_F36C                                  ;

SetupSoundChannel_Square2_F36A:
	lda #<APU_Square2DutyAndVolume                              ;

SetupSoundChannel_F36C:
	sta $F4

	lda #>APU_ChannelRegister1
	sta $F5
	stx $F6
	sty $F7

	ldy #$00                                                    ;

;init something, sample?
InitSpecialSound_F383:
	sta Sound_CurrentSFX2ID

	lda FanfareHeaders_F846,Y                                   ;headers!!
	tay

	lda FanfareHeaders_F846,Y
	sta Sound_NoteLengthOffset

	lda FanfareHeaders_F846+1,Y
	sta Sound_SFX2DataPointer

	lda FanfareHeaders_F846+2,Y
	sta Sound_SFX2DataPointer+1

	lda FanfareHeaders_F846+3,Y                                 ;another pointer
	sta $FA

	lda FanfareHeaders_F846+4,Y
	sta $FB

	lda FanfareHeaders_F846+5,Y                                 ;another pointer
	sta $FC

	lda FanfareHeaders_F846+6,Y
	sta $FD

	lda FanfareHeaders_F846+7,Y                                 ;one. more. pointer.
	sta $FE

	lda FanfareHeaders_F846+8,Y
	sta $FF

	lda #$01
	sta $D8
	sta $D9
	sta $DA
	sta $DB

	lda #$00
	sta $F3
	sta $D0
	sta $D1
	sta $D2
	sta $D3
	sta APU_DMCLoadCounter
rts

CODE_F3D0:
	lda #$7F
	sta APU_ChannelRegister2
	sta APU_Square2Sweep
	stx $E9
	sty $EA
rts

DATA_F3DD:
	.byte $13,$7F,$3E,$F0

DATA_F3E1:
	.byte $4F,$53,$58,$5E,$63,$69,$70,$76
	.byte $7E,$85,$8D,$90,$92,$93

DATA_F3EF:
	.byte $92,$D5,$40,$C0

DATA_F3F3:
	.byte $B2,$DF,$FF,$80

DATA_F3F7:
	.byte $02,$7F,$0F,$08

DATA_F3FB:
	.byte $00,$7F,$03,$08

	;unknown
	.byte $FF

DATA_F400:
	.byte $10,$00,$18                                  ;unused

	.byte $10,$01,$18,$00,$01,$88,$06,$02
	.byte $40,$05,$02,$C0
	
CODE_F40F:
	lda $F9
	beq CODE_F451

	dec $D8
	bne CODE_F451

	lda #$00

	lda #<CODE_F423
	sta $0612

	lda #<CODE_F42E
	sta $0610

CODE_F423:
	ldy #$D0
	inc $D0
	lda (Sound_SFX2DataPointer),Y
	beq CODE_F443
	jmp CODE_F51C

CODE_F42E:
	tya
	bpl CODE_F43A

	jsr ProcessLengthData_F544
	ldy #$D0
	inc $D0
	lda (Sound_SFX2DataPointer),Y

CODE_F43A:
	jsr SetSquare1Frequency_F550
	bne CODE_F448
	ldy #$10
	bne CODE_F44A

CODE_F443:
		lda #$00
		jmp SilenceSoundChannels_F68C

CODE_F448:
	ldy $E9	

CODE_F44A:
	sty APU_ChannelRegister1
	lda $DC
	sta $D8

CODE_F451:
	lda $FB
	beq CODE_F47E
	dec $D9
	BNE CODE_F47E
	ldx #$01
	ldy $D1
	inc $D1
	lda ($FA),Y
	bpl CODE_F46C
	jsr ProcessLengthData_F544
	ldy $D1
	inc $D1
	lda ($FA),Y

CODE_F46C:
	jsr SetSquare2Frequency_F564
	bne CODE_F475
	ldy #$10
	bne CODE_F477

CODE_F475:
	ldy $EA

CODE_F477:
	sty APU_Square2DutyAndVolume
	lda $DD
	sta $D9

CODE_F47E:
	lda $FD
	beq CODE_F4D1
	dec $DA
	bne CODE_F4D1

	ldx #$02
	lda #<CODE_F49B
	sta $0610

	lda #<CODE_F492
	sta $0612

CODE_F492:
	ldy $D2
	inc $D2
	lda ($FC),Y
	jmp CODE_F51C

CODE_F49B:
	tya
	bpl CODE_F4BF
	jsr ProcessLengthData_F544
	ldy $E4
	beq CODE_F4A9
	lda #$FF
	bne CODE_F4B4

CODE_F4A9:
	clc
	adc #$FE
	asl a
	asl a
	cmp #$3C
	bcc CODE_F4B4
	lda #$3C

CODE_F4B4:
	sta APU_TriangleLinearCounter
	sta $E7

	ldy $D2
	inc $D2
	lda ($FC),Y

CODE_F4BF:
	jsr SetTriangleFrequency_F568
	bne CODE_F4C8

	ldy #$00
	beq CODE_F4CA

CODE_F4C8:
	ldy $E7

CODE_F4CA:
	sty APU_TriangleLinearCounter
	lda $DE
	sta $DA

CODE_F4D1:
	lda $FF
	beq RETURN_F501
	dec $DB
	bne RETURN_F501

	ldx #$03
	lda #<CODE_F4EE
	sta $0610

	lda #<CODE_F4E5
	sta $0612

CODE_F4E5:
	ldy $D3
	inc $D3
	lda ($FE),Y
	jmp CODE_F51C

CODE_F4EE:
	tya
	bpl CODE_F4FA
	jsr ProcessLengthData_F544
	ldy $D3
	inc $D3
	lda ($FE),Y

CODE_F4FA:
	jsr CODE_F502
	lda $DF
	sta $DB

RETURN_F501:
rts

CODE_F502:
	tay
	lda $F3
	cmp #$02
	beq RETURN_F51B

	lda DATA_F400,Y
	sta APU_NoiseVolume

	lda DATA_F400+1,Y
	sta APU_NoiseLoop

	lda DATA_F400+2,Y
	sta APU_NoiseLength

RETURN_F51B:
rts

CODE_F51C:
	tay
	cmp #$FF
	beq CODE_F52A
	and #$C0
	cmp #$C0
	beq CODE_F536
	jmp ($0610)

CODE_F52A:
	lda $E0,X
	beq CODE_F541

	dec $E0,X

	lda $D4,X
	sta $D0,X
	bne CODE_F541

CODE_F536:
	tya
	and #$3F
	sta $E0,X
	dec $E0,X
	lda $D0,X
	sta $D4,X

CODE_F541:
	jmp ($0612)

ProcessLengthData_F544:
	and #$07
	clc
	adc Sound_NoteLengthOffset
	tay
	lda ChannelLengthLookup_F350,Y
	sta $DC,X
rts

SetSquare1Frequency_F550:
	ldx #<APU_Square1DutyAndVolume

;Input A - frequency lookup table indx
;X - channel offset
SetChannelFrequency_F552:
	tay                                                         ;
	lda ChannelFrequencyLookup_F300+1,Y                         ;
	beq RETURN_F563                                             ;
	sta APU_ChannelFrequency,X                                  ;
		
	lda ChannelFrequencyLookup_F300,Y                           ;
	ora #$08                                                    ;
	sta APU_ChannelFrequencyHigh,X                              ;

RETURN_F563:
rts

SetSquare2Frequency_F564:
	ldx #<APU_Square2DutyAndVolume                              ;
	bne SetChannelFrequency_F552                                ;

SetTriangleFrequency_F568:
	ldx #<APU_TriangleLinearCounter                             ;
	bne SetChannelFrequency_F552                                ;

;sound engine
SoundEngine_F56C:
	lda #$C0                                                    ;don't generate IRQs
	sta APU_FrameCounter                                        ;

	jsr CODE_F6CF
	jsr CODE_F621
	jsr CODE_F7CC
	jsr PlayDMCSample_F591

	lda #$00
	beq CODE_F58A

CODE_F581:
	lda #>CODE_F423                                             ;set high byte for RAM pointers. note that this assumes all codes we're pointing to are in ROM betwenn $F400-$F4FF
	sta $0613                                                   ;this high byte remains unchanged while low byte is modified
	sta $0611
rts

;purge queues.
CODE_F58A:
	sta Sound_SFX1Queue                                         ;
	sta Sound_SFX2Queue                                         ;
	sta Sound_SFX3Queue                                         ;
rts																;

PlayDMCSample_F591:
	lda Sound_SFX3Queue                                         ;
	lsr a                                                       ;
	bcs PlayBarkSample_F5A2                                     ;
	lsr a                                                       ;
	bcs PlayQuackSample_F59A                                    ;only two samples to comb through
rts																;

PlayQuackSample_F59A:
	lda #$20                                                    ;
	GetDMCSampleLocation DMCSample_DuckQuack_FD00               ;
	ldy #$0F                                                    ;
	bne LoadDMCSample_F5A8                                      ;

PlayBarkSample_F5A2:
	lda #$20                                                    ;same size
	GetDMCSampleLocation DMCSample_DogBark_FB00                 ;
	ldy #$0E                                                    ;

;A - sample size
;X - sample location
;Y - sample frequency
LoadDMCSample_F5A8:
	sta APU_DMCSampleLength                                     ;
	stx APU_DMCSampleAddress                                    ;
	sty APU_DMCFrequency                                        ;

	lda #$1F														;enable all channels, including DMC
	sta APU_SoundChannels                                       ;
rts                         	                                ;

DATA_F5B7:
	.byte $9F,$7F,$60,$00
	
DATA_F5BB:
	.byte $9F,$7F,$61,$00

PlaySFX_DogLaugh_F5BF:
	ldx #<DATA_F3DD
	ldy #>DATA_F3DD
	jsr SetupSoundChannel_Triangle_F362
	
	lda #$00
	sta $EB
	sta $ED
	sta $EE
	
	lda #$06
	sta $EF
	
	lda #$3E
	sta $EC

	lda #$40
	sta $F3

RETURN_F5DA:
rts
	
CODE_F5DB:
	inc $EE
	lda $EE
	cmp #$01
	bne RETURN_F5DA
		
	lda #$00
	sta $EE

	inc $EB
	lda $EB
	cmp $EF
	beq CODE_F5FB

	dec $EC
	dec $EC
	dec $EC
	lda $EC
	sta APU_TriangleFrequency
rts

CODE_F5FB:
	lda $EF
	clc
	adc #$06
	sta $EF

	ldy $ED
	lda DATA_F3E1,Y
	sta APU_TriangleFrequency
	
	sta $EC
	lda #$F0
	sta APU_TriangleFrequencyHigh

	inc $ED
	lda $ED
	cmp #$0E
	bne RETURN_F5DA

	lda #$00
	sta APU_TriangleLinearCounter
	sta $F3
rts

;last 4 bit checks
CODE_F621:
	lda Sound_SFX1Queue
	asl a
	bcs CODE_F669
	asl a
	bcs PlaySFX_DogLaugh_F5BF
	asl a
	bcs PlaySFX_ClayPigeonFall_F641
	asl a
	bcs PlaySFX_DuckFall_F639

	lda $F3
	asl a
	asl a
	bcs CODE_F5DB
	asl a
	bcs CODE_F655

rts

PlaySFX_DuckFall_F639:
	ldx #<DATA_F3EF
	ldy #<DATA_F3EF
	jsr SetupSoundChannel_Square1_F35E
rts

PlaySFX_ClayPigeonFall_F641:
	ldx #<DATA_F3F3
	ldy #<DATA_F3F3
	jsr SetupSoundChannel_Square2_F36A

RETURN_F654:
rts

CODE_F655:
	inc $EE
	lda $EE
	cmp #$02
	bne RETURN_F654

	lda #$00
	sta $EE

	inc $EF
	lda $EF
	cmp #$A0
	bne RETURN_F654

CODE_F669:
	lda #$10
	sta APU_Square2DutyAndVolume

	lda $F3
	and #$DF
	sta $F3
rts

PlaySFX_ClayPigeonHit_F675:
	ldx #<DATA_F3F7
	ldy #>DATA_F3F7
	jsr SetupSoundChannel_Noise_F366

	lda #$10
	sta APU_ChannelRegister1

	lda $F3
	and #$F0
	sta $F3
rts

;silence all sound channels, disable special sound from playing
PlaySFX_Silence_F688:
CODE_F688:
	lda #$00                                                    ;
	sta $F3
	
SilenceSoundChannels_F68C:
	sta APU_TriangleLinearCounter                               ;no triangle
	sta APU_DMCLoadCounter                                      ;no DMC
	sta Sound_CurrentSFX2ID
	sta $E4
	
	lda #$10                                                    ;
	sta APU_Square1DutyAndVolume                                ;no square 1
	sta APU_Square2DutyAndVolume                                ;no square 2
	sta APU_NoiseVolume                                         ;no noise
rts                                                         ;

InitSFX_WingFlag_F6A2:
	ldx #<DATA_F3FB
	ldy #>DATA_F3FB
	jsr SetupSoundChannel_Noise_F366

	lda #$00
	sta $EB

	lda $F3
	ora #$08
	sta $F3

RETURN_F6B3:
rts

PlaySFX_WingFlag_F6B4:
	ldy $EB
	lda DATA_F6CB,Y
	sta APU_NoiseLoop

	inc $EB
	lda $EB
	cmp #$04
	bne RETURN_F6B3

	lda $F3
	and #$FE
	sta $F3
rts

DATA_F6CB:
	.byte $00,$02,$01,$00

;first 4 bits check
CODE_F6CF:
	lda Sound_SFX1Queue
	lsr a
	bcs PlaySFX_Silence_F688
	lsr a
	bcs InitSFX_ZapperShot_F6E8
	lsr a
	bcs PlaySFX_ClayPigeonHit_F675
	lsr a
	bcs InitSFX_WingFlag_F6A2
	
	lda $F3
	lsr a
	lsr a
	bcs PlaySFX_ZapperShot_F703
	lsr a
	lsr a
	bcs PlaySFX_WingFlag_F6B4
rts

InitSFX_ZapperShot_F6E8:
	ldx #<DATA_F6FF
	ldy #>DATA_F6FF
	jsr SetupSoundChannel_Noise_F366

	lda #$00
	sta $EC
	sta $ED
	sta APU_DMCLoadCounter									  ;related to noise/triangle volume

	lda $F3
	ora #$02
	sta $F3

CODE_F6FE:
rts

DATA_F6FF:
	.byte $3F,$7F,$0F,$08

PlaySFX_ZapperShot_F703:
	inc $EC
	lda $EC
	cmp #$02
	bne CODE_F6FE
		
	lda #$00
	sta $EC
		
	ldy $ED
	lda DATA_F731,Y
	sta APU_NoiseLoop
		
	lda DATA_F761,Y
	sta APU_NoiseVolume
		
	inc $ED
	lda $ED
	cmp #$30
	bne RETURN_F730
		
	lda #$10
	sta APU_NoiseVolume
		
	lda $F3
	and #$FD
	sta $F3

	RETURN_F730:
	rts

DATA_F731:
	.byte $0E,$0B,$05,$05,$05,$05,$05,$05
	.byte $05,$05,$05,$05,$04,$04,$04,$04
	.byte $04,$04,$03,$03,$03,$03,$03,$04
	.byte $03,$02,$02,$02,$02,$02,$02,$02
	.byte $02,$01,$01,$01,$02,$02,$01,$01
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	
DATA_F761:
	.byte $3F,$3F,$3F,$3F,$3F,$3F,$3D,$3C
	.byte $38,$38,$38,$37,$37,$37,$36,$36
	.byte $34,$34,$34,$34,$34,$34,$34,$34
	.byte $33,$33,$33,$33,$33,$33,$33,$33
	.byte $32,$32,$32,$32,$32,$32,$32,$32
	.byte $32,$32,$32,$32,$32,$32,$32,$32

CODE_F791:
	ldx #<DATA_F5B7
	ldy #>DATA_F5B7
	jsr SetupSoundChannel_Square1_F35E
	
CODE_F79C:
	jsr SetupSoundChannel_Square2_F36A
rts

DATA_F7A0:
	.byte $84,$93,$70,$E3

DATA_F7A4:
	.byte $84,$93,$72,$E3
	
CODE_F7A8:
	lda #$00                                                    ;doesn't seem necessary because we're setting this after?
	sta APU_Square1DutyAndVolume                                ;

	ldx #<DATA_F7A0
	ldy #>DATA_F7A0
	jsr SetupSoundChannel_Square1_F35E

	ldx #<DATA_F7A4
	ldy #>DATA_F7A4
	bne CODE_F79C

CODE_F7BA:
	ldy #$06
	lda #$80
	bne CODE_F82F

CODE_F7C0:
	ldy #$04
	lda #$04
	bne CODE_F826

CODE_F7C6:
	ldy #$05
	lda #$08
	bne CODE_F826

CODE_F7CC:
	lda Sound_SFX2Queue
	lsr a
	bcs CODE_F7FD
	lsr a
	bcs CODE_F803
	lsr a
	bcs CODE_F7C0
	lsr a
	bcs CODE_F7C6
	lsr a
	bcs CODE_F809
	lsr a
	bcs CODE_F80F
	lsr a
	bcs CODE_F815
	lsr a
	bcs CODE_F7BA

	lda Sound_SFX3Queue
	asl a                                                       ;bit 7 check...
	bcs CODE_F81B
	asl a                                                       ;skip over bit 6 because it's not used
	asl a
	bcs CODE_F791
	asl a
	bcs CODE_F840
	asl a
	bcs CODE_F7A8

	lda Sound_CurrentSFX2ID                                     ;see if we should be playing something
	bne CODE_F7FA
rts                                                   	        ;

CODE_F7FA:
	jmp CODE_F40F

CODE_F7FD:
	ldy #$02
	lda #$40
	bne CODE_F826

CODE_F803:
	ldy #$03
	lda #$02
	bne CODE_F826

CODE_F809:
	ldy #$01
	lda #$10
	bne CODE_F826

CODE_F80F:
	ldy #$07
	lda #$20
	bne CODE_F826

CODE_F815:
	ldy #$02
	lda #$40
	bne CODE_F826
	
CODE_F81B:
	lda #$10
	sta APU_NoiseVolume

	ldy #$08
	lda #$EF
	bne CODE_F82F

CODE_F826:
	jsr InitSpecialSound_F383


CODE_F82F:
	jsr InitSpecialSound_F383

	ldx #$86
	ldy #$86
	
CODE_F836:
	jsr CODE_F3D0

	lda #$00
	sta $E4
	jmp CODE_F40F

CODE_F840:
	ldy #$09
	lda #$FF
	bne CODE_F826

FanfareHeaders_F846:
.byte FanfareHeader_1-FanfareHeaders_F846
.byte FanfareHeader_2-FanfareHeaders_F846
.byte FanfareHeader_3-FanfareHeaders_F846
.byte FanfareHeader_4-FanfareHeaders_F846
.byte FanfareHeader_5-FanfareHeaders_F846
.byte FanfareHeader_6-FanfareHeaders_F846
.byte FanfareHeader_7-FanfareHeaders_F846
.byte FanfareHeader_8-FanfareHeaders_F846
.byte FanfareHeader_9-FanfareHeaders_F846
.byte FanfareHeader_10-FanfareHeaders_F846

;Each fanfare has a header, with following format:
;1 byte - note length lookup offset
;2 bytes - pointer to square 1 sound data
;2 bytes - pointer to square 2 sound data
;2 bytes - pointer to triangle sound data
;2 bytes - pointer to noise sound data

FanfareHeader_1:
.byte $07
.word DATA_F8C3
.word DATA_F8E2
.word DATA_F908
.word DATA_F91B

FanfareHeader_2:
.byte $07
.word DATA_F92F
.word DATA_F960
.word DATA_F9A1
.word DATA_F9CC

FanfareHeader_3:
.byte $07
.word DATA_FAAF
.word DATA_FACA
.word DATA_FAE4
.word DATA_FAF5

FanfareHeader_4:
.byte $07
.word DATA_F9DA
.word DATA_F9F7
.word DATA_FA13
.word DATA_FA28

FanfareHeader_5:
.byte $07
.word DATA_FA2F
.word DATA_FA3F
.word DATA_FA64
.word DATA_FA80

FanfareHeader_6:
.byte $07
.word DATA_FA91
.word DATA_FA9A
.word DATA_FAA7
.word $0000

FanfareHeader_7:
.byte $07
.word DATA_F8BD
.word $0000
.word $0000
.word $0000

FanfareHeader_8:
.byte $00
.word DATA_F926
.word DATA_F92A
.word $0000
.word $0000

FanfareHeader_9:
.byte $00
.word DATA_F8AA
.word DATA_F8B1
.word DATA_F8B7
.word $0000

FanfareHeader_10:
.byte $00
.word DATA_FF00
.word DATA_FF18
.word $0000
.word $0000

DATA_F8AA:
.byte $85,$3E,$3C,$3A,$38,$36
.byte $00

DATA_F8B1:
.byte $85,$44,$42,$40,$3E,$3C

DATA_F8B7:
.byte $85,$3E,$3C,$3A,$38,$36

DATA_F8BD:
.byte $C3,$80,$10,$4E,$FF
.byte $00

DATA_F8C3:
.byte $84,$02,$81,$02,$2A,$2A,$02,$2C
.byte $02,$2C,$02,$2E,$30,$02,$22,$83
.byte $02,$81,$02,$08,$02,$02,$06,$02
.byte $06,$02,$28,$2A,$02,$22
.byte $00

DATA_F8E2:
.byte $84,$02,$81,$02,$80,$46,$46,$81
.byte $46,$02,$1C,$1E,$20,$22,$80,$28
.byte $28,$81,$2A,$02,$40,$83,$02,$81
.byte $02,$30,$02,$02,$80,$2C,$2C,$81
.byte $1E,$20,$22,$30,$83,$02

DATA_F908:
.byte $C6,$80,$0C,$02,$0C,$02,$18,$02
.byte $18,$02,$4C,$02,$4C,$02,$18,$02
.byte $18,$02
.byte $FF

DATA_F91B:
.byte $C6,$81,$03,$03,$06,$06,$03,$03
.byte $06,$03
.byte $FF

DATA_F926:
.byte $81,$16,$4A
.byte $00

DATA_F92A:
.byte $80,$02,$81,$16,$4A

DATA_F92F:
.byte $81,$0C,$0C,$12,$02,$0C,$02,$12
.byte $02,$0E,$0E,$16,$02,$0E,$02,$16
.byte $02,$0C,$0C,$12,$02,$0C,$02,$12
.byte $02,$12,$10,$0E,$0C,$08,$04,$30
.byte $02,$80,$04,$04,$81,$08,$0A,$0C
.byte $80,$0E,$0E,$81,$12,$16,$18,$48
.byte $00

DATA_F960:
.byte $80,$04,$04,$81,$04,$22,$28,$04
.byte $22,$24,$28,$80,$2C,$2C,$81,$2C
.byte $24,$2C,$04,$2C,$80,$04,$30,$2C
.byte $28,$80,$04,$04,$81,$22,$24,$10
.byte $28,$2A,$2C,$2E,$80,$30,$30,$81
.byte $2E,$2C,$28,$80,$24,$24,$81,$22
.byte $1E,$02,$80,$22,$22,$81,$24,$26
.byte $28,$80,$2C,$2C,$81,$30,$04,$08
.byte $0C

DATA_F9A1:
.byte $81,$1A,$1A,$02,$20,$22,$02,$3E
.byte $02,$3A,$3A,$02,$40,$42,$02,$1A
.byte $42,$1A,$32,$02,$34,$36,$38,$3A
.byte $02,$3E,$82,$3E,$81,$42,$44,$46
.byte $3E,$02,$1A,$1A,$02,$38,$3A,$3A
.byte $02,$3A,$1A

DATA_F9CC:
.byte $C8,$81,$06,$03,$06,$80,$09,$03
.byte $81,$03,$03,$82,$0C
.byte $FF

DATA_F9DA:
.byte $81,$2A,$2A,$28,$02,$26,$02,$24
.byte $02,$85,$22,$81,$24,$83,$02,$81
.byte $02,$0E,$06,$2A,$2A,$28,$26,$24
.byte $85,$22,$81,$24
.byte $00

DATA_F9F7:
.byte $81,$24,$24,$22,$02,$20,$02,$1E
.byte $02,$85,$3E,$81,$40,$83,$02,$81
.byte $02,$2A,$24,$1C,$1A,$46,$44,$40
.byte $85,$3E,$81,$40

DATA_FA13:
.byte $84,$02,$85,$1A,$81,$1C,$83,$02
.byte $81,$02,$4A,$14,$0E,$0A,$08,$06
.byte $04,$85,$1A,$81,$1C

DATA_FA28:
.byte $CC,$81,$06,$06,$09,$03 
.byte $FF

DATA_FA2F:
.byte $82,$08,$10,$16,$48,$18,$02,$12
.byte $02,$10,$0C,$08,$06,$81,$08
.byte $00

DATA_FA3F:
.byte $81,$26,$26,$82,$2C,$81,$08,$0C
.byte $10,$16,$80,$12,$12,$81,$28,$10
.byte $0C,$30,$2E,$30,$04,$80,$2C,$2C
.byte $81,$08,$28,$30,$80,$26,$26,$81
.byte $2C,$22,$2C,$82,$26

DATA_FA64:
.byte $85,$1E,$81,$1E,$82,$3C,$3C,$85
.byte $3E,$81,$3E,$85,$3E,$81,$3E,$85
.byte $42,$81,$42,$85,$42,$81,$42,$82
.byte $1E,$81,$1E,$1E                                          ;three last values seem unused?

DATA_FA80:
.byte $C4,$81,$06,$82,$0C,$81,$06,$80
.byte $09,$03,$03,$03,$09,$03,$03,$03
.byte $FF

DATA_FA91:
.byte $81,$0A,$24,$26,$28,$2E,$0A,$04
.byte $00

DATA_FA9A:
.byte $80,$12,$12,$81,$0A,$0A,$80,$20
.byte $20,$81,$28,$2E,$2A

DATA_FAA7:
.byte $81,$20,$02,$20,$28,$02,$28,$2A

DATA_FAAF:
.byte $82,$02,$81,$0E,$08,$04,$2C,$2A
.byte $28,$24,$1E,$1C,$1A,$1E,$24,$2E
.byte $24,$2C,$04,$28,$2E,$08,$28,$30
.byte $0E,$0C
.byte $00

DATA_FACA:
.byte $82,$02,$81,$2C,$2C,$02,$02,$1E
.byte $02,$02,$02,$02,$02,$44,$1E,$24
.byte $42,$1A,$2C,$44,$1E,$24,$46,$1E
.byte $1E,$28

DATA_FAE4:
.byte $82,$1E,$81,$1E,$85,$22,$24,$3C
.byte $82,$3E,$81,$3E,$85,$42,$44,$46
.byte $1A

DATA_FAF5:
.byte $C5,$81,$06,$06,$06,$09,$03,$06
.byte $FF

;free space until samples, so they are aligned properly (2 measily bytes)

.include "Data/DMCSamples/Bark.s"
.include "Data/DMCSamples/Quack.s"

DATA_FF00:
.byte $87,$04,$28,$04,$28,$04,$0C,$04
.byte $0C,$04,$0C,$12,$0C,$12,$0C,$12
.byte $48,$12,$48,$12,$48,$80,$02,$00

DATA_FF18:
.byte $80,$02,$87,$04,$28,$04,$28,$04
.byte $0C,$04,$0C,$04,$0C,$12,$0C,$12
.byte $0C,$12,$48,$12,$48,$12,$48
