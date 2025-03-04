implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(c:ref Draw->Context, a:list of string);};
init(nil:ref Draw->Context, nil:list of string)
{
	sys := load Sys Sys->PATH;
	s := "hello";
	sys->print("%s %c %*d %*s %*s %*bud %s %s\n", s, 'c', 5, 5, 10, s, 8, s, 5, big 5, s, s);
}
