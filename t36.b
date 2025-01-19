implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;
	#argv = tl argv;
	i := 5;
	#if (argv != nil)
	#	i = int hd argv;
	case i {
	1 => sys->print("1\n");
	2 => sys->print("2\n");
	3 => sys->print("3\n");
	* => sys->print("default\n");
	}
}
