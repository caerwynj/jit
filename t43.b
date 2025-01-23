implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	a:=array[10]of big;
	a[0] = big 1;
	a[9] = big 1;
}
