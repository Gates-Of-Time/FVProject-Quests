sub EVENT_SPAWN {  
	#:: Create a timer 'despawn' that triggers every 60 seconds (1 min)
  	quest::settimer("despawn",60);
}

sub EVENT_SAY {
	elsif ($text=~/hail/i) {
		quest::emote("shivers and growls to itself.");
		quest::say("Much thanks must I give, $name. Furless one still wants magic thing, after all the troubles? Say quickly. Much pain from attack. Must go, shaman help.");
	}
	elsif ($text=~/magic thing/i) {
    	#:: Give a 30042 - Chapter P
		quest::summonitem(30042);
		#:: Stop the timer 'despawn'
		quest::stoptimer("despawn");
		#:: Depop without spawn timer
		quest::depop();
	}
}

sub EVENT_TIMER {
	#:: Match the timer 'despawn'
	if ($timer eq "despawn") {
		#:: Stop the timer 'despawn'
		quest::stoptimer("despawn");
		#:: Depop without spawn timer
		quest::depop();
	}
}
