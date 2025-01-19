implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	#sys = load Sys Sys->PATH;
	x := byte 1;
	i := 1;
	x <<= 1;
	i <<= 1;
	x >>= 1;
	i >>= 1;
	#sys->print("%bd, %d, %d\n", b, i, int x);
}
