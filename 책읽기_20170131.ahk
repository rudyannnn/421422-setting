
^e:: edit

#2:: reload

Numpad1:: nextpage("pgdn",5,"+",17,"left",4,"right",15,"up")
Numpad2:: pagezoomLU(5,"+",17,"left",4,"right",15,"up")
Numpad3:: pageRU(28,"right",31,"up")
Numpad0:: pageDown(16,"down")
Numpad4:: 
	loop 40
	{
		sleep 100
		pageDown(16,"down")
		sleep 1000
		PixelGetColor, color, 1364, 477
		if (color <> 0x151615){
			PixelGetColor, color, 285, 47
			if(color<>0x1919DF){
			click, 855, 352
			}
			click, 517, 134
			sleep 5000
			click, 855, 352
			MouseMove 1000, 300
			break
		}
		sleep 9000
	}
	return
Numpad6:: click, 517, 134
Numpad5:: reload

#Numpad1:: nextpage("pgup",5,"+",19,"right",4,"left",15,"down")
#Numpad2:: pagezoomLU(5,"+",17,"right",4,"left",15,"down")
#Numpad3:: pageRU(28,"left",31,"down")
#Numpad0:: pageDown(16,"up")


nextpage(pgdn,a,aa,b,bb,c,cc,d,dd)
{
	sleep 200
	send,{%pgdn%}
	loop, %a%
	{
		send,{%aa%}
	}
	loop, %b%
	{
		send,{%bb%}
	}
	loop, %c%
	{
		send,{%cc%}
	}
	loop, %d%
	{
		send,{%dd%}
	}
	send,{-}
	return
}

pagezoomLU(a,aa,b,bb,c,cc,d,dd)
{
	sleep 200
	loop, %a%
	{
		send,{%aa%}
	}
	loop, %b%
	{
		send,{%bb%}
	}
	loop, %c%
	{
		send,{%cc%}
	}
	loop, %d%
	{
		send,{%dd%}
	}
	send,{-}
	return
}

pageRU(a,aa,b,bb)
{
	sleep 200

	loop, %a%
	{
		send,{%aa%}
	}
	loop, %b%
	{
		send,{%bb%}
	}
	return
}

pageDown(a,aa)
{
	loop, %a%
	{
		send,{%aa%}
	}
	return
}
