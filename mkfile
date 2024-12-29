SRC=`{ls *.b}
DIS=${SRC:%.b=%.dis}

all:V: $DIS

%.dis: %.b
	limbo $stem.b
