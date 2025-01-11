implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

st:adt {
	a, b: int;
	v: array of int;
	
};

f(): (st, st, st)
{
	s := st(1, 2, array[1] of {* => 0});
	t := st(2, 3, array[1] of {* => 1});
	w := st(3, 4, array[1] of {* => 2});
	return (s, t, w);
}

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	(s, t, w) := f();
	sys->print("%d %d %d %d %d\n", s.a, s.b, t.a, t.b, w.v[0]);
	sys->print("end\n");
}
