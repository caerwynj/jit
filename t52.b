implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;
	{
		f();
	} exception e {
	* =>
		sys->print("exception\n");
		exit;
	}
}

f()
{
	raise "error";
}

