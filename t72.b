implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	b := big "12345";
	c := big "234";
	s := string b;
	b %= big 97;
	if (b == c) b = big 1;
	if (b >= c) b = big 2;
	if (b > c) b = big 3;
	if (b <= c) b = big 4;
	if (b < c) b = big 5;
	if (b != c) b = big 6;
}
