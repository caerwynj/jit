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
