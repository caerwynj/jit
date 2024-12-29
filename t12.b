implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	n := 1;
	i := 0;
	case n {
	1 => i++;
	2 => i++;	
	}
}
