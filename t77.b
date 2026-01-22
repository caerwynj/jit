implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
Simple: adt {
	a: int;
	b: byte;
	c: int;
};
init(nil: ref Draw->Context, nil: list of string)
{
	x := Simple(1, byte 2, 3);
	y := Simple(0, byte 0, 0);
	y = x;
}
