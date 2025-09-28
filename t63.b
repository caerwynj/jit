implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	n := big 2;
	m := big 3;
	m = n * m;
	n = n - big 1;
	m = m / n;
	n = n + m;

	print("%bd %bd \n", n, m);
}
