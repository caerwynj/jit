implement Command;
include "sys.m";
include "draw.m";
Command:module{init:fn(ctx:ref Draw->Context, argv:list of string);};
init(nil: ref Draw->Context, nil: list of string)
{
	s := "alpha";
	t := "beta";
	u := s + t;
	n := len u;
	case u {
	"alphabeta" => n++;
	"nope" => n--;
	* => n += 2;
	}
}
