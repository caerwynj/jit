implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
f():int
{
	a := 0;
	a++;
	return 0;
}

init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;
	while((o := f()) != 0) {
		sys->print("in loop\n");
		break;
	}
	sys->print("end\n");
}
