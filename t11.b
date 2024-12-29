implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	l: list of int;
	l = 1 :: 2 :: nil;
	hd l;
	tl l;
}
