implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	a := list of {1, 2, 3, 4};
	x :=len a;
	sys = load Sys Sys->PATH;
	sys->print("%d\n", x);
}
