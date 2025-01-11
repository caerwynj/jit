implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	s := "-c1";		

	if(len s < 2 || s[0] != '-')
		print("len s<2");
	print("\nend\n");
}
