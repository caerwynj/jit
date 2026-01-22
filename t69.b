implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	i := 1234;
	j := 37;
	k := i & j;
	l := i | j;
	m := i ^ j;
	i /= 7;
	j %= 5;
	if (k != l) k = l;
}
