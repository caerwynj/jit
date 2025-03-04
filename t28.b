implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	i: int;
	i = 1<<31;
	print("%d, %ux\n", i, i);
	i +=1;
	print("%d, %ux\n", i, i);
	i -= 2;
	print("%d, %ux\n", i, i);
}
