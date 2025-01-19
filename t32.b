implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
St:adt{
	a:byte;
	b:int;
	c:big;
	e:big;
	f,g:int;
	h,i,j,k:byte;
	l:array of int;
	m: array of int;
	n: int;
};
init(nil: ref Draw->Context, nil: list of string)
{
	#sys = load Sys Sys->PATH;
	a := St(byte 1,2,big 3,big 4, 5,6,byte '0',byte '1',byte '2',byte '3',array[1] of int, array[1] of int, 7);
	#sys->print("%bd, %d, %d\n", b, i, int x);
}
