implement Ls;
include "sys.m";
include "draw.m";
include "bufio.m";
sys: Sys;
stderr: ref Sys->FD;
bufio: Bufio;
Ls: module
{
	init:	fn(ctxt: ref Draw->Context, argv: list of string);
};

badmodule(p: string)
{
	sys->fprint(stderr, "ls: cannot load %s: %r\n", p);
	raise "fail:bad module";
}

init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;
	stderr = sys->fildes(2);
	bufio = load Bufio Bufio->PATH;
	if(bufio == nil) badmodule(Bufio->PATH);
}
