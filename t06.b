implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	i: int;
	b: big;
	s: string;
	i = 1;
	b = big i;
	s = string i;
	i = s[0];
}
