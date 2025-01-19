implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	#sys = load Sys Sys->PATH;
	x := byte 0;
	i := 0;
	b := big 1;
	b++;
	i++;
	x += byte 1;
	#x <<= 1;
	#i <<= 1;
	#b <<= 1;
	#x >>= 1;
	#i >>= 1;
	#b >>= 1;
	#x = byte b;
	#i = int b;
	#b = big x;
	#sys->print("%bd, %d, %d\n", b, i, int x);
}
