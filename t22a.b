implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	s := ".";
	s[len s] = 'a';
	s[len s] = 'b';
	s[len s] = 'c';
	sys->print("%d %d %s\n", len s, 1, s);
}
