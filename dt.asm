bnew      512(mp), 504(mp), $2
load      16(mp), $1, 512(mp)
mframe    512(mp), $0, 64(fp)
movp      376(mp), 64(64(fp))
movw      $0, 72(64(fp))
lea       80(fp), 32(64(fp))
mcall     64(fp), $0, 512(mp)
bnew      504(mp), 80(fp), $10
movw      $0, 0(32(fp))
ret       
newa      $128, $1, 72(fp)
mframe    512(mp), $1, 64(fp)
movp      80(fp), 64(64(fp))
movp      72(fp), 72(64(fp))
lena      72(fp), 80(64(fp))
lea       88(fp), 32(64(fp))
mcall     64(fp), $1, 512(mp)
blew      $0, 88(fp), $20
movw      $0, 0(32(fp))
ret       
movp      72(fp), 104(fp)
slicea    $0, 88(fp), 104(fp)
cvtac     104(fp), 104(fp)
cvtcl     104(fp), 64(fp)
movp      504(mp), 104(fp)
divl      48(mp), 64(fp), 96(fp)
cvtlw     96(fp), 0(32(fp))
ret       
frame     $13, 64(fp)
lea       72(fp), 32(64(fp))
call      64(fp), $0
frame     $15, 64(fp)
movw      72(fp), 64(64(fp))
lea       80(fp), 32(64(fp))
call      64(fp), $40
frame     $8, 64(fp)
movp      80(fp), 64(64(fp))
lea       0(32(fp)), 32(64(fp))
call      64(fp), $168
ret       
bnew      520(mp), 504(mp), $45
frame     $20, 112(fp)
movp      504(mp), 64(112(fp))
lea       520(mp), 32(112(fp))
call      112(fp), $215
addw      16(520(mp)), 64(fp), 96(fp)
movw      $0, 104(fp)
movw      $0, 88(fp)
lena      32(520(mp)), 112(fp)
addw      $1, 88(fp), 80(fp)
bgew      80(fp), 112(fp), $61
indl      32(520(mp)), 80(fp), 88(fp)
bgtw      0(80(fp)), 96(fp), $59
addw      $1, 88(fp), 80(fp)
indl      32(520(mp)), 80(fp), 80(fp)
blew      0(80(fp)), 96(fp), $59
addw      24(520(mp)), 64(fp), 96(fp)
addw      $1, 104(fp)
jmp       $61
addw      $2, 88(fp)
jmp       $48
frame     $19, 80(fp)
movw      96(fp), 64(80(fp))
lea       72(fp), 32(80(fp))
call      80(fp), $73
beqw      $0, 104(fp), $69
movp      8(520(mp)), 64(72(fp))
movw      24(520(mp)), 72(72(fp))
jmp       $71
movp      0(520(mp)), 64(72(fp))
movw      16(520(mp)), 72(72(fp))
movp      72(fp), 0(32(fp))
ret       
new       $6, 88(fp)
modw      $86400, 64(fp), 120(fp)
divw      $86400, 64(fp), 104(fp)
blew      $0, 120(fp), $79
addw      $86400, 120(fp)
subw      $1, 104(fp)
modw      $60, 120(fp), 0(88(fp))
divw      $60, 120(fp), 80(fp)
modw      $60, 80(fp), 8(88(fp))
divw      $60, 80(fp)
movw      80(fp), 16(88(fp))
addw      $7340036, 104(fp), 72(fp)
modw      $7, 72(fp), 48(88(fp))
bgtw      $0, 104(fp), $116
movw      $70, 80(fp)
addw      $1900, 80(fp), 96(fp)
modw      $4, 96(fp)
bnew      96(fp), $0, $99
addw      $1900, 80(fp), 96(fp)
modw      $100, 96(fp)
bnew      96(fp), $0, $97
addw      $1900, 80(fp), 96(fp)
modw      $400, 96(fp)
bnew      96(fp), $0, $99
movw      $366, 72(fp)
jmp       $100
movw      $365, 72(fp)
bgtw      72(fp), 104(fp), $136
addw      $1900, 80(fp), 72(fp)
modw      $4, 72(fp)
bnew      72(fp), $0, $112
addw      $1900, 80(fp), 72(fp)
modw      $100, 72(fp)
bnew      72(fp), $0, $110
addw      $1900, 80(fp), 72(fp)
modw      $400, 72(fp)
bnew      72(fp), $0, $112
movw      $366, 96(fp)
jmp       $113
movw      $365, 96(fp)
subw      96(fp), 104(fp)
addw      $1, 80(fp)
jmp       $88
movw      $70, 80(fp)
blew      $0, 104(fp), $136
addw      $1900, 80(fp), 72(fp)
subw      $1, 72(fp)
modw      $4, 72(fp)
bnew      72(fp), $0, $132
addw      $1900, 80(fp), 72(fp)
subw      $1, 72(fp)
modw      $100, 72(fp)
bnew      72(fp), $0, $130
addw      $1900, 80(fp), 72(fp)
subw      $1, 72(fp)
modw      $400, 72(fp)
bnew      72(fp), $0, $132
movw      $366, 96(fp)
jmp       $133
movw      $365, 96(fp)
addw      96(fp), 104(fp)
subw      $1, 80(fp)
jmp       $117
movw      80(fp), 40(88(fp))
movw      104(fp), 112(fp)
movw      112(fp), 56(88(fp))
addw      $1900, 80(fp), 72(fp)
modw      $4, 72(fp)
bnew      72(fp), $0, $150
addw      $1900, 80(fp), 72(fp)
modw      $100, 72(fp)
bnew      72(fp), $0, $148
addw      $1900, 80(fp), 72(fp)
modw      $400, 72(fp)
bnew      72(fp), $0, $150
movw      $366, 96(fp)
jmp       $151
movw      $365, 96(fp)
bnew      96(fp), $366, $154
movp      488(mp), 128(fp)
jmp       $155
movp      480(mp), 128(fp)
movw      $0, 80(fp)
indl      128(fp), 96(fp), 80(fp)
bgtw      0(96(fp)), 112(fp), $162
indl      128(fp), 96(fp), 80(fp)
subw      0(96(fp)), 112(fp)
addw      $1, 80(fp)
jmp       $156
addw      $1, 112(fp), 24(88(fp))
movw      80(fp), 32(88(fp))
movp      432(mp), 64(88(fp))
movw      $0, 72(88(fp))
movp      88(fp), 0(32(fp))
ret       
bnew      512(mp), 504(mp), $170
load      16(mp), $1, 512(mp)
addw      40(64(fp)), $1900, 88(fp)
frame     $18, 72(fp)
movp      40(mp), 64(72(fp))
indl      536(mp), 80(fp), 48(64(fp))
movp      0(80(fp)), 72(72(fp))
indl      496(mp), 80(fp), 32(64(fp))
movp      0(80(fp)), 80(72(fp))
movw      24(64(fp)), 88(72(fp))
movw      16(64(fp)), 96(72(fp))
movw      8(64(fp)), 104(72(fp))
movw      0(64(fp)), 112(72(fp))
movp      64(64(fp)), 120(72(fp))
movw      88(fp), 128(72(fp))
lea       0(32(fp)), 32(72(fp))
mcall     72(fp), $2, 512(mp)
ret       
bnew      512(mp), 504(mp), $188
load      16(mp), $1, 512(mp)
frame     $15, 88(fp)
movw      72(fp), 64(88(fp))
lea       80(fp), 32(88(fp))
call      88(fp), $40
subw      72(fp), 64(fp), 88(fp)
movw      $15552000, 48(fp)
bgew      88(fp), 48(fp), $205
frame     $11, 88(fp)
movp      32(mp), 64(88(fp))
indl      496(mp), 96(fp), 32(80(fp))
movp      0(96(fp)), 72(88(fp))
movw      24(80(fp)), 80(88(fp))
movw      16(80(fp)), 88(88(fp))
movw      8(80(fp)), 96(88(fp))
lea       0(32(fp)), 32(88(fp))
mcall     88(fp), $2, 512(mp)
ret       
addw      40(80(fp)), $1900, 104(fp)
frame     $10, 96(fp)
movp      24(mp), 64(96(fp))
indl      496(mp), 88(fp), 32(80(fp))
movp      0(88(fp)), 72(96(fp))
movw      24(80(fp)), 80(96(fp))
movw      104(fp), 88(96(fp))
lea       0(32(fp)), 32(96(fp))
mcall     96(fp), $2, 512(mp)
ret       
bnew      512(mp), 504(mp), $217
load      16(mp), $1, 512(mp)
new       $5, 80(fp)
movw      $0, 16(80(fp))
movp      432(mp), 0(80(fp))
bnec      504(mp), 64(fp), $231
frame     $14, 88(fp)
movp      392(mp), 64(88(fp))
lea       72(fp), 32(88(fp))
call      88(fp), $301
bnec      504(mp), 72(fp), $240
frame     $14, 88(fp)
movp      408(mp), 64(88(fp))
lea       72(fp), 32(88(fp))
call      88(fp), $301
jmp       $240
indc      64(fp), $0, 88(fp)
beqw      88(fp), $47, $236
indc      64(fp), $0, 88(fp)
beqw      88(fp), $35, $236
addc      64(fp), 400(mp), 64(fp)
frame     $14, 88(fp)
movp      64(fp), 64(88(fp))
lea       72(fp), 32(88(fp))
call      88(fp), $301
bnec      504(mp), 72(fp), $243
movp      80(fp), 0(32(fp))
ret       
indc      72(fp), $0, 88(fp)
beqw      88(fp), $47, $247
indc      72(fp), $0, 88(fp)
bnew      88(fp), $35, $261
lenc      72(fp), 96(fp)
subw      $1, 96(fp)
indc      72(fp), 96(fp), 88(fp)
bnew      88(fp), $10, $254
lenc      72(fp), 96(fp)
subw      $1, 96(fp)
slicec    $0, 96(fp), 72(fp)
frame     $14, 96(fp)
movp      72(fp), 64(96(fp))
lea       72(fp), 32(96(fp))
call      96(fp), $301
bnec      504(mp), 72(fp), $261
movp      80(fp), 0(32(fp))
ret       
mframe    512(mp), $3, 96(fp)
movp      72(fp), 64(96(fp))
movp      0(mp), 72(96(fp))
lea       112(fp), 32(96(fp))
mcall     96(fp), $3, 512(mp)
blew      $4, 112(fp), $269
movp      80(fp), 0(32(fp))
ret       
headp     120(fp), 0(80(fp))
tail      120(fp), 120(fp)
headp     120(fp), 136(fp)
cvtcw     136(fp), 16(80(fp))
movp      504(mp), 136(fp)
tail      120(fp), 120(fp)
headp     120(fp), 8(80(fp))
tail      120(fp), 120(fp)
headp     120(fp), 136(fp)
cvtcw     136(fp), 24(80(fp))
movp      504(mp), 136(fp)
tail      120(fp), 120(fp)
subw      $4, 112(fp), 96(fp)
newa      96(fp), $2, 32(80(fp))
lena      32(80(fp)), 88(fp)
beqw      $0, 88(fp), $289
subw      $1, 88(fp)
indl      32(80(fp)), 104(fp), 88(fp)
movw      $0, 0(104(fp))
jmp       $284
movw      $0, 128(fp)
beqw      504(mp), 120(fp), $299
movw      128(fp), 104(fp)
addw      $1, 128(fp)
indl      32(80(fp)), 104(fp), 104(fp)
headp     120(fp), 136(fp)
cvtcw     136(fp), 0(104(fp))
movp      504(mp), 136(fp)
tail      120(fp), 120(fp)
jmp       $290
movp      80(fp), 0(32(fp))
ret       
mframe    512(mp), $0, 96(fp)
movp      64(fp), 64(96(fp))
movw      $0, 72(96(fp))
lea       80(fp), 32(96(fp))
mcall     96(fp), $0, 512(mp)
bnew      504(mp), 80(fp), $309
movp      504(mp), 0(32(fp))
ret       
newa      $2048, $1, 72(fp)
mframe    512(mp), $1, 96(fp)
movp      80(fp), 64(96(fp))
movp      72(fp), 72(96(fp))
lena      72(fp), 80(96(fp))
lea       88(fp), 32(96(fp))
mcall     96(fp), $1, 512(mp)
bltw      $0, 88(fp), $319
movp      504(mp), 0(32(fp))
ret       
movp      72(fp), 104(fp)
slicea    $0, 88(fp), 104(fp)
cvtac     104(fp), 0(32(fp))
movp      504(mp), 104(fp)
ret       
movw      $0, 88(fp)
addw      40(64(fp)), $1900, 104(fp)
blew      $1970, 104(fp), $342
movw      104(fp), 80(fp)
blew      $1970, 80(fp), $357
modw      $4, 80(fp), 72(fp)
bnew      72(fp), $0, $337
modw      $100, 80(fp), 72(fp)
bnew      72(fp), $0, $335
modw      $400, 80(fp), 72(fp)
bnew      72(fp), $0, $337
movw      $366, 96(fp)
jmp       $338
movw      $365, 96(fp)
mulw      $86400, 96(fp)
subw      96(fp), 88(fp)
addw      $1, 80(fp)
jmp       $328
movw      $1970, 80(fp)
bgew      80(fp), 104(fp), $357
modw      $4, 80(fp), 96(fp)
bnew      96(fp), $0, $352
modw      $100, 80(fp), 96(fp)
bnew      96(fp), $0, $350
modw      $400, 80(fp), 96(fp)
bnew      96(fp), $0, $352
movw      $366, 72(fp)
jmp       $353
movw      $365, 72(fp)
mulw      $86400, 72(fp)
addw      72(fp), 88(fp)
addw      $1, 80(fp)
jmp       $343
modw      $4, 104(fp), 96(fp)
bnew      96(fp), $0, $365
modw      $100, 104(fp), 96(fp)
bnew      96(fp), $0, $363
modw      $400, 104(fp), 96(fp)
bnew      96(fp), $0, $365
movw      $366, 72(fp)
jmp       $366
movw      $365, 72(fp)
bnew      72(fp), $366, $369
movp      488(mp), 112(fp)
jmp       $370
movp      480(mp), 112(fp)
movw      $0, 80(fp)
blew      32(64(fp)), 80(fp), $378
indl      112(fp), 72(fp), 80(fp)
movw      $86400, 48(fp)
mulw      0(72(fp)), 48(fp), 72(fp)
addw      72(fp), 88(fp)
addw      $1, 80(fp)
jmp       $371
movw      24(64(fp)), 72(fp)
subw      $1, 72(fp)
mulw      $86400, 72(fp)
addw      72(fp), 88(fp)
mulw      16(64(fp)), $3600, 72(fp)
addw      72(fp), 88(fp)
mulw      8(64(fp)), $60, 72(fp)
addw      72(fp), 88(fp)
addw      0(64(fp)), 88(fp)
subw      72(64(fp)), 88(fp), 0(32(fp))
ret       
new       $6, 72(fp)
bnew      456(mp), 504(mp), $392
load      384(mp), $0, 456(mp)
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       136(fp), 32(80(fp))
call      80(fp), $553
movp      136(fp), 64(fp)
movp      144(fp), 88(fp)
movp      504(mp), 136(fp)
movp      504(mp), 144(fp)
frame     $11, 80(fp)
movp      536(mp), 64(80(fp))
movp      88(fp), 72(80(fp))
lea       48(72(fp)), 32(80(fp))
call      80(fp), $579
bgew      48(72(fp)), $0, $411
frame     $11, 80(fp)
movp      528(mp), 64(80(fp))
movp      88(fp), 72(80(fp))
lea       48(72(fp)), 32(80(fp))
call      80(fp), $579
bgew      48(72(fp)), $0, $414
movp      504(mp), 0(32(fp))
ret       
movp      64(fp), 112(fp)
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       136(fp), 32(80(fp))
call      80(fp), $553
movp      136(fp), 64(fp)
movp      144(fp), 88(fp)
movp      504(mp), 136(fp)
movp      504(mp), 144(fp)
frame     $11, 80(fp)
movp      496(mp), 64(80(fp))
movp      88(fp), 72(80(fp))
lea       32(72(fp)), 32(80(fp))
call      80(fp), $579
bltw      32(72(fp)), $0, $492
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $566
movp      120(fp), 64(fp)
movw      128(fp), 24(72(fp))
movp      504(mp), 120(fp)
bltw      24(72(fp)), $1, $438
blew      24(72(fp)), $31, $440
movp      504(mp), 0(32(fp))
ret       
frame     $17, 80(fp)
movp      64(fp), 64(80(fp))
movp      72(fp), 72(80(fp))
lea       152(fp), 32(80(fp))
call      80(fp), $590
movw      152(fp), 104(fp)
movp      160(fp), 64(fp)
movp      504(mp), 160(fp)
bnew      $0, 104(fp), $451
movp      504(mp), 0(32(fp))
ret       
beqc      504(mp), 64(fp), $457
indc      64(fp), $0, 80(fp)
bnew      80(fp), $32, $457
lenc      64(fp), 80(fp)
slicec    $1, 80(fp), 64(fp)
jmp       $451
beqc      504(mp), 64(fp), $480
indc      64(fp), $0, 80(fp)
bltw      80(fp), $48, $462
indc      64(fp), $0, 80(fp)
blew      80(fp), $57, $480
movw      $0, 96(fp)
lenc      64(fp), 80(fp)
blew      80(fp), 96(fp), $480
indc      64(fp), 96(fp), 80(fp)
bnew      80(fp), $32, $478
frame     $21, 80(fp)
movp      64(fp), 64(80(fp))
slicec    $0, 96(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $628
movp      120(fp), 64(72(fp))
movw      128(fp), 72(72(fp))
movp      504(mp), 120(fp)
lenc      64(fp), 80(fp)
slicec    96(fp), 80(fp), 64(fp)
jmp       $480
addw      $1, 96(fp)
jmp       $463
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $566
movw      128(fp), 40(72(fp))
movp      504(mp), 120(fp)
blew      40(72(fp)), $1900, $488
subw      $1900, 40(72(fp))
bnec      64(72(fp)), 504(mp), $551
movp      432(mp), 64(72(fp))
movw      $0, 72(72(fp))
jmp       $551
movp      112(fp), 64(fp)
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $566
movp      120(fp), 64(fp)
movw      128(fp), 24(72(fp))
movp      504(mp), 120(fp)
bltw      24(72(fp)), $1, $502
blew      24(72(fp)), $31, $504
movp      504(mp), 0(32(fp))
ret       
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       136(fp), 32(80(fp))
call      80(fp), $553
movp      136(fp), 64(fp)
movp      144(fp), 88(fp)
movp      504(mp), 136(fp)
movp      504(mp), 144(fp)
frame     $11, 80(fp)
movp      496(mp), 64(80(fp))
movp      88(fp), 72(80(fp))
lea       32(72(fp)), 32(80(fp))
call      80(fp), $579
bltw      32(72(fp)), $0, $519
bltw      32(72(fp)), $12, $521
movp      504(mp), 0(32(fp))
ret       
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $566
movp      120(fp), 64(fp)
movw      128(fp), 40(72(fp))
movp      504(mp), 120(fp)
blew      40(72(fp)), $1900, $530
subw      $1900, 40(72(fp))
frame     $17, 80(fp)
movp      64(fp), 64(80(fp))
movp      72(fp), 72(80(fp))
lea       152(fp), 32(80(fp))
call      80(fp), $590
movw      152(fp), 104(fp)
movp      160(fp), 88(fp)
movp      504(mp), 160(fp)
bnew      $0, 104(fp), $541
movp      504(mp), 0(32(fp))
ret       
frame     $21, 80(fp)
movp      88(fp), 64(80(fp))
lea       120(fp), 32(80(fp))
call      80(fp), $628
movp      120(fp), 64(72(fp))
movw      128(fp), 72(72(fp))
movp      504(mp), 120(fp)
bnec      64(72(fp)), 504(mp), $551
movp      504(mp), 0(32(fp))
ret       
movp      72(fp), 0(32(fp))
ret       
mframe    456(mp), $0, 72(fp)
movp      64(fp), 64(72(fp))
movp      472(mp), 72(72(fp))
lea       64(fp), 32(72(fp))
mcall     72(fp), $0, 456(mp)
mframe    456(mp), $2, 72(fp)
movp      64(fp), 64(72(fp))
movp      472(mp), 72(72(fp))
lea       80(fp), 32(72(fp))
mcall     72(fp), $2, 456(mp)
movp      88(fp), 0(32(fp))
movp      80(fp), 8(32(fp))
ret       
mframe    456(mp), $0, 72(fp)
movp      64(fp), 64(72(fp))
movp      464(mp), 72(72(fp))
lea       64(fp), 32(72(fp))
mcall     72(fp), $0, 456(mp)
mframe    456(mp), $2, 72(fp)
movp      64(fp), 64(72(fp))
movp      464(mp), 72(72(fp))
lea       80(fp), 32(72(fp))
mcall     72(fp), $2, 456(mp)
movp      88(fp), 0(32(fp))
cvtcw     80(fp), 8(32(fp))
ret       
lena      64(fp), 88(fp)
movw      $0, 80(fp)
bgew      80(fp), 88(fp), $588
indl      64(fp), 96(fp), 80(fp)
bnec      0(96(fp)), 72(fp), $586
movw      80(fp), 0(32(fp))
ret       
addw      $1, 80(fp)
jmp       $581
movw      $-1, 0(32(fp))
ret       
movw      $0, 88(fp)
movp      504(mp), 96(fp)
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       104(fp), 32(80(fp))
call      80(fp), $566
movp      104(fp), 64(fp)
movw      112(fp), 16(72(fp))
movp      504(mp), 104(fp)
bltw      16(72(fp)), $0, $601
bltw      16(72(fp)), $24, $603
movmp     88(fp), $4, 0(32(fp))
ret       
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       104(fp), 32(80(fp))
call      80(fp), $566
movp      104(fp), 64(fp)
movw      112(fp), 8(72(fp))
movp      504(mp), 104(fp)
bltw      8(72(fp)), $0, $612
bltw      8(72(fp)), $60, $614
movmp     88(fp), $4, 0(32(fp))
ret       
frame     $9, 80(fp)
movp      64(fp), 64(80(fp))
lea       104(fp), 32(80(fp))
call      80(fp), $566
movp      104(fp), 64(fp)
movw      112(fp), 0(72(fp))
movp      504(mp), 104(fp)
bltw      0(72(fp)), $0, $623
bltw      0(72(fp)), $60, $625
movmp     88(fp), $4, 0(32(fp))
ret       
movw      $1, 0(32(fp))
movp      64(fp), 8(32(fp))
ret       
mframe    456(mp), $0, 128(fp)
movp      64(fp), 64(128(fp))
movp      8(mp), 72(128(fp))
lea       64(fp), 32(128(fp))
mcall     128(fp), $0, 456(mp)
lenc      64(fp), 88(fp)
bgew      $0, 88(fp), $645
mframe    456(mp), $1, 136(fp)
subw      $1, 88(fp), 72(fp)
indc      64(fp), 72(fp), 64(136(fp))
movp      8(mp), 72(136(fp))
lea       128(fp), 32(136(fp))
mcall     136(fp), $1, 456(mp)
bnew      128(fp), $0, $643
jmp       $645
subw      $1, 88(fp)
jmp       $634
lenc      64(fp), 72(fp)
blew      72(fp), 88(fp), $648
slicec    $0, 88(fp), 64(fp)
bnec      504(mp), 64(fp), $652
movp      432(mp), 0(32(fp))
movw      $0, 8(32(fp))
ret       
casec     64(fp), 56(mp)
movp      432(mp), 0(32(fp))
movw      $0, 8(32(fp))
ret       
lenc      64(fp), 72(fp)
bnew      72(fp), $5, $684
indc      64(fp), $0, 72(fp)
beqw      72(fp), $43, $662
indc      64(fp), $0, 72(fp)
bnew      72(fp), $45, $684
movp      64(fp), 144(fp)
slicec    $1, $3, 144(fp)
cvtcw     144(fp), 112(fp)
movp      504(mp), 144(fp)
movp      64(fp), 144(fp)
slicec    $3, $5, 144(fp)
cvtcw     144(fp), 120(fp)
movp      504(mp), 144(fp)
bltw      $23, 112(fp), $672
bgew      $59, 120(fp), $675
movp      504(mp), 0(32(fp))
movw      $0, 8(32(fp))
ret       
mulw      $3600, 112(fp), 72(fp)
mulw      $60, 120(fp), 136(fp)
addw      136(fp), 72(fp), 104(fp)
indc      64(fp), $0, 72(fp)
bnew      72(fp), $45, $681
subw      104(fp), $0, 104(fp)
movp      432(mp), 0(32(fp))
movw      104(fp), 8(32(fp))
ret       
casec     64(fp), 168(mp)
movp      416(mp), 96(fp)
jmp       $694
movp      424(mp), 96(fp)
jmp       $694
movp      440(mp), 96(fp)
jmp       $694
movp      448(mp), 96(fp)
jmp       $694
jmp       $694
frame     $20, 72(fp)
movp      96(fp), 64(72(fp))
lea       80(fp), 32(72(fp))
call      72(fp), $215
bnec      0(80(fp)), 64(fp), $702
movp      0(80(fp)), 0(32(fp))
movw      16(80(fp)), 8(32(fp))
ret       
bnec      8(80(fp)), 64(fp), $706
movp      8(80(fp)), 0(32(fp))
movw      24(80(fp)), 8(32(fp))
ret       
movp      504(mp), 0(32(fp))
movw      $0, 8(32(fp))
ret       
