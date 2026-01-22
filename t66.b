implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	l := 1 :: 2 :: 3 :: nil;
	h := hd l;
	t := tl l;
	m := len l;
	x := hd t;
}
