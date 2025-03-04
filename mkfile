SRC=`{ls *.b}
DIS=${SRC:%.b=%.dis}
ASM=${SRC:%.b=%.s}

all:V: $DIS $ASM t53.h

%.dis: %.b
	limbo $stem.b

%.s: %.b
	limbo -S $stem.b

%.h: %.m
	limbo -a $stem.m > $target

install:V: $DIS
	cp *.dis ~/9ferno/dis

nuke:V:
	rm -f *.dis *.sbl
