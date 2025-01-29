implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
f(a: chan of int, n: int)
{
	a <-= n++;
}
init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;

	n,m : int;
	a := chan of int;
	b := chan of int;
	spawn f(a, 1);
	spawn f(b, 10);
	for(i:=0; i < 2; i++)
	alt {
	n = <-a =>
		sys->print("%d\n",n);
	m = <-b =>
		sys->print("%d\n",m);	
	}
	exit;
}
