implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	i: int;
	b: byte;
	d: big;
	s: string;
	r: real;
	i = 1;
	b = byte i;
	i = int b;
	d = big i;
	i = int d;
	s = string i;
	i = int s;
	r = real i;
	i = int r;
}
