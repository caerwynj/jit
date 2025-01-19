implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	s: list of string;
	s = "a" :: "b" :: "c" :: nil;
	for (l:=s;l!=nil;l=tl l)
		sys->print("%s\n", hd l);
}
