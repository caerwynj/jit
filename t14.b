implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys := load Sys Sys->PATH;
	s:string;
	s = "hello";
	sys->print("%c %c %s\n", s[0], s[4], s[1:3]);
}
