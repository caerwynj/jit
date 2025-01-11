implement Command;
include "sys.m";
include "draw.m";
sys:Sys;
print: import sys;
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};

init(nil: ref Draw->Context, nil: list of string)
{
	sys = load Sys Sys->PATH;
	s := ".";		
	if(len s > 3)
		print("len s>3");
	if(len s >= 3)
		print("len s>=3");
	if(len s < 3)
		print("len s<3");
	if(len s <= 3)
		print("len s<=3");
	if(len s == 3)
		print("len s==3");
	print("\nend\n");
}
