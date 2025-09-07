implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	i := 0;
	n := i -1;
	print("i<=n %d\n", i <= n);
	if(i<=n)
		print("error");
	print("end");
}
