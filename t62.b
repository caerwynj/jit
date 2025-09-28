implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	n := 6.0;
	m := big n;
	o := big 2;
	p := real o;
	print("%g %bd %bd %g\n", n, m, o, p);
}
