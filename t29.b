implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

st:adt {
	a, b: int;
	
};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	s := st(1, 2);
	sys->print("%d %d\n", s.a, s.b);
}
