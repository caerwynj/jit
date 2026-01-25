implement Command;
include "sys.m";
include "draw.m";
include "bufio.m";
sys: Sys;
bufio: Bufio;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	bufio = load Bufio Bufio->PATH;
	if(bufio == nil)
		sys->print("failed to load bufio\n");
	else
		sys->print("loaded bufio OK\n");
}
