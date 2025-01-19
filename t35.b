implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;
	for (l:=argv;l!=nil;l=tl l)
		sys->print("%s\n", hd l);
}
