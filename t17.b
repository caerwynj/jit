implement Emuinit;
include "sys.m";
	sys: Sys;
include "draw.m";
include "sh.m";
include "arg.m";
	arg: Arg;

Emuinit: module
{
	init: fn();
};

init()
{
	sys = load Sys Sys->PATH;

	sys->bind("#e", "/env", sys->MREPL|sys->MCREATE);	# if #e not configured, that's fine
	args := getenv("emuargs");
}

getenv(v: string): list of string
{
	fd := sys->open("#e/"+v, Sys->OREAD);
	if (fd == nil)
		return nil;
	(ok, d) := sys->fstat(fd);
	if(ok == -1)
		return nil;
	buf := array[int d.length] of byte;
	n := sys->read(fd, buf, len buf);
	if (n <= 0)
		return nil;
	sys->print("here1\n");
	#return string buf[0:n] :: nil;
	return unquoted(string buf[0:n]);
}

unquoted(s: string): list of string
{
	args: list of string;
	word: string;
	inquote := 0;
	for(j := len s; j > 0;){
		sys->print("here2\n");
		c := s[j-1];
		if(c == ' ' || c == '\t' || c == '\n'){
			j--;
			continue;
		}
		for(i := j-1; i >= 0 && ((c = s[i]) != ' ' && c != '\t' && c != '\n' || inquote); i--){	# collect word
			if(c == '\''){
				sys->print("here3\n");
				word = s[i+1:j] + word;
				j = i;
				if(!inquote || i == 0 || s[i-1] != '\'')
					inquote = !inquote;
				else
					i--;
			}
		}
		sys->print("here5 %d %d len %d\n", i+1, j, len s);
		args = (s[i+1:j]+word) :: args;
		word = nil;
		j = i;
	}
	# if quotes were unbalanced, balance them and try again.
	if(inquote)
		return unquoted(s + "'");
	return args;
}
