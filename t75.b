implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	a := array[6] of int;
	b := array[2] of int;
	a[0] = 1;
	b[0] = 2;
	b[1] = 3;
	a[2:] = b;

	r := array[3] of real;
	r[0] = 1.0;
	x := r[1];
}
