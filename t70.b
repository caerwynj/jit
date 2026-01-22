implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	s := "alpha";
	t := "beta";
	if (s < t) s = "less";
	if (s <= t) s = "leq";
	if (s > t) s = "greater";
	if (s >= t) s = "geq";
	if (s != t) s = "neq";
}
