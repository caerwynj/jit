implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	a := 0;
	for(i := 0; i<10; i++)
	case i {
	1 => a++;
	2 => a++;
	30 => a++;
	4 => a++;
	5 => a++;
	60 => a++;
	7 => a++;
	* => a*=10;
	}
	sys = load Sys Sys->PATH;
	sys->print("done case %d\n", a);
}
