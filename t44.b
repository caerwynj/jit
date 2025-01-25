implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	i := big 1;
	i <<= 1;
	i >>= 1;
	#sys->print("%bd, %d, %d\n", b, i, int x);
}
