implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
Simple: adt {
	a: int;
	b: byte;
};
Withptr: adt {
	a: int;
	s: string;
};
init(nil: ref Draw->Context, nil: list of string)
{
	ls := Simple(1, byte 2) :: nil;
	hs := hd ls;
	ls = tl ls;

	lp := Withptr(3, "x") :: nil;
	hp := hd lp;
	lp = tl lp;
}
