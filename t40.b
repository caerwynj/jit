implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	s := "hello world";
	for (i := 0; i < len s; i++) {
		s[i] = s[i]+1;
	}
	sys = load Sys Sys->PATH;
	sys->print("%s\n", s);
}
