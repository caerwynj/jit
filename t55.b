implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(c:ref Draw->Context, a:list of string);};
init(nil:ref Draw->Context, nil:list of string)
{
	sys := load Sys Sys->PATH;
	(n,nil) := sys->stat("/");
}
