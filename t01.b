implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil:ref Draw->Context, nil: list of string)
{
	for(i:=0; i < 10;i++) ;
}
