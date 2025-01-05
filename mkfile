SRC=`{ls *.b}
DIS=${SRC:%.b=%.dis}

all:V: $DIS

%.dis: %.b
	limbo $stem.b

install:V: $DIS
	cp *.dis ~/9ferno/dis
