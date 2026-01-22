implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	a := byte 12;
	b := byte 5;
	c := a & b;
	d := a | b;
	e := a ^ b;
	a -= byte 1;
	b *= byte 2;
	c /= byte 2;
	d %= byte 3;
	if (a == b) a = byte 1;
	if (a >= b) a = byte 2;
	if (a > b) a = byte 3;
	if (a <= b) a = byte 4;
	if (a < b) a = byte 5;
}
