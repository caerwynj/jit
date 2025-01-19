implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	a:byte;
	b:int;
	c:big;
	e:big;
	f,g:int;
	h,i,j,k:byte;
	l:array of int;
	m: array of int;
	n: int;

	a = byte 1;
	b = 2;
	c = big 3;
	e = big 4;
	f = 5;
	g = 6;
	h = i = j = k = byte 7;
	l = array[1] of int;
	m = array[1] of int;
	n = 8;
}
