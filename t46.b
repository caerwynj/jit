implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	x := 5;
	x += (x++ * 2);
	sys = load Sys Sys->PATH;
	sys->print("%d\n", x);
}
