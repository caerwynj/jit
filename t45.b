implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
St:adt {
	a, b: int;
};
a := array[] of {St(1,2), St(2,3)};
init(nil: ref Draw->Context, nil: list of string)
{
	x := 2 * a[1].b;
	#sys->print("%bd, %d, %d\n", b, i, int x);
}
