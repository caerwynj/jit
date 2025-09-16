implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;

	p := array[2] of ref Sys->FD;
	sys->pipe(p);
	spawn reader(p[1]);
	sys->write(p[0], array of byte "hello", 5);
	p = nil;
}

reader(fd: ref Sys->FD)
{
	n: int;
	buf := array[8192] of byte;
	while((n = sys->read(fd, buf, len buf)) > 0)
		sys->print("read %d\n", n);
}
