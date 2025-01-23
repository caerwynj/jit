implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	a:=array[10]of int;
	a[0] = 1;
	a[1] = 2;
	a[2] = 3;
	a[9] = 1;
}
