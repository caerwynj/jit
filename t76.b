implement Command;
include "sys.m";
include "draw.m";
sys: Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
Simple: adt {
	a: int;
	b: byte;
};
Withptr: adt {
	a: int;
	s: string;
};
senderb(c: chan of byte)
{
	c <-= byte 1;
}
senderf(c: chan of real)
{
	c <-= 1.5;
}
senderl(c: chan of big)
{
	c <-= big 7;
}
senderp(c: chan of string)
{
	c <-= "x";
}
senderm(c: chan of Simple)
{
	c <-= Simple(1, byte 2);
}
sendermp(c: chan of Withptr)
{
	c <-= Withptr(3, "y");
}
init(nil: ref Draw->Context, argv: list of string)
{
	sys = load Sys Sys->PATH;

	cb := chan of byte;
	cf := chan of real;
	cl := chan of big;
	cp := chan of string;
	cm := chan of Simple;
	cmp := chan of Withptr;

	spawn senderb(cb);
	spawn senderf(cf);
	spawn senderl(cl);
	spawn senderp(cp);
	spawn senderm(cm);
	spawn sendermp(cmp);

	b := <-cb;
	f := <-cf;
	l := <-cl;
	p := <-cp;
	m := <-cm;
	mp := <-cmp;

	if (sys->millisec() < 0) {
		alt {
		b = <-cb =>
			b++;
		* =>
			b++;
		}

		mod := load Command "/dis/t01.dis";
		if (mod != nil)
			spawn mod->init(nil, nil);
	}
}
