implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	src := "/";

	if(len src >= 3 && (src[0:2] == "#/" || src[0:2] == "#U")) # remove unnecesary #/'s and #U's
		src = src[2:];
	sys->print("%d %s\n", len src, src);
}
