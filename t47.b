implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	a:=array[10]of big;
	x :=len a;
	sys = load Sys Sys->PATH;
	sys->print("%d\n", x);
}
