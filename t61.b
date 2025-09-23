implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	n := 1.0;
	m := n * 6.0;
	n += 1.0;
	n /= 2.0;
	n -= 0.1;
	m = -m;
	if (n < 1.0)
		print("less than 1.0\n");
	print("%g %g\n", m, n);
}
