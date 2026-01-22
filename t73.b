implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	lb := byte 1 :: byte 2 :: nil;
	hb := hd lb;
	lb = tl lb;

	lf := 1.0 :: 2.0 :: nil;
	hf := hd lf;
	lf = tl lf;

	ll := big 1 :: big 2 :: nil;
	hl := hd ll;
	ll = tl ll;
}
