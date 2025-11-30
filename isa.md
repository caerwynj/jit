     0x00   0x10   0x20   0x30   0x40   0x50   0x60   0x70    0x80   0x90   0xa0   
0x00 nop    new    headb  cvtwb  mulw   shrw   blew   slicela shrl   casec  mulx   
0x01 alt    newa   headw  cvtfw  mulf   insc   bgtw   slicec  bnel   indl   divx 
0x02 nbalt  newcb  headp  cvtwf  divb   indc   bgew   indw    bltl   movpc  cvtxx 
0x03 goto   newcw  headf  cvtca  divw   addc   beqf   indf    blel   tcmp   mulx0 
0x04 call   newcf  headm  cvtac  divf   lenc   bnef   indb    bgtl   mnewz  divx0 
0x05 frame  newcp  headmp cvtwc  modw   lena   bltf   negf    bgel   cvtrf  cvtxx0 
0x06 spawn  newcm  tail   cvtcw  modb   lenl   blef   movl    beql   cvtfr  mulx1 
0x07 runt   newcmp lea    cvtfc  andb   beqb   bgtf   addl    cvtlf  cvtws  divx1 
0x08 load   send   indx   cvtcf  andw   bneb   bgef   subl    cvtfl  cvtsw  cvtxx1 
0x09 mcall  recv   movp   addb   orb    bltb   beqc   divl    cvtlw  lsrw   cvtfx 
0x0a mspawn consb  movm   addw   orw    bleb   bnec   modl    cvtwl  lsrl   cvtxf 
0x0b mframe consw  movmp  addf   xorb   bgtb   bltc   mull    cvtlc  eclr   expw 
0x0c ret    consp  movb   subb   xorw   bgeb   blec   andl    cvtcl  newz   expl 
0x0d jmp    consf  movw   subw   shlb   beqw   bgtc   orl     headl  newaz  expf 
0x0e case   consm  movf   subf   shlw   bnew   bgec   xorl    consl  raise  self    
0x0f exit   consmp cvtbw  mulb   shrb   bltw   slicea shll    newcl  casel          
