implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	i := -1;
	s := string i;
	sys = load Sys Sys->PATH;
	sys->print("%s\n", s);
}
