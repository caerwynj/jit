implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	a := array[6] of int;
	a[0] = 10;
	a[5] = 60;
	b := a[1:5];
	b[0] = 20;
	n := len b;
	i := b[3];
}
