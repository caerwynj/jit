implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys := load Sys Sys->PATH;
	a, b: array of int;
	a = array[5] of {* => 0};
	a[2]=1;
	b = a[2:];	
	sys->print("%d len %d\n", b[0], len b);
}
