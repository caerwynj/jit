implement Command;
include "sys.m";
include "draw.m";
sys: Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
Node: adt {
	a: int;
	b: byte;
};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	n := ref Node(1, byte 2);
	d := ref Sys->Dir;
	if (n == nil)
		d = ref Sys->Dir;
}
