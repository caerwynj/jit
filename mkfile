SRC=`{ls *.b}
DIS=${SRC:%.b=%.dis}
ASM=${SRC:%.b=%.s}
JIT=${SRC:%.b=%.jit}

all:V: $DIS $ASM t53.h $JIT

%.jit: %.dis
	emu -c5 -d /dis/$stem.dis > $target

%.dis: %.b
	limbo $stem.b

%.s: %.b
	limbo -S $stem.b

%.h: %.m
	limbo -a $stem.m > $target

install:V: $DIS
	cp *.dis $ROOT/dis

nuke:V:
	rm -f *.dis *.sbl


coverage:V: $ASM
	awk '!/^#/ {print $1}' *.s |sort |uniq >inst
	cat isa.md |tr ' ' '\n' |sort |uniq |awk '!/0x/' > isa
	comm -23 isa inst > uncovered
	echo "scale=2; 1 - ( $(wc -l <uncovered) / $(wc -l <isa)  )"  |bc
