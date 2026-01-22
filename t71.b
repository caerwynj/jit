implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	r := real "1.5";
	s := real "2.25";
	t := string r;
	if (r == s) r = 0.0;
	if (r >= s) r = 1.0;
	if (r > s) r = 2.0;
	if (r <= s) r = 3.0;
	if (r < s) r = 4.0;
	if (r != s) r = 5.0;
}
