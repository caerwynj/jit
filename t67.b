implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	b := big 3;
	case b {
	big 0 => b = big 1;
	big 1 => b = big 2;
	big 3 => b = big 4;
	* => b = big 5;
	}
}
