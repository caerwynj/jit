implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(c:ref Draw->Context, a:list of string);};
init(nil:ref Draw->Context, nil:list of string)
{
	sys := load Sys Sys->PATH;
	a := array[1] of int;

	{	
	a[1];
	} exception e {
	* => 
		sys->print("exception\n");
		exit;
	}
}

