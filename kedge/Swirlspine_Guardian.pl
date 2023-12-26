sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 1800 seconds (30 minutes)
	quest::settimer("depop", 1800);
 	#:: Create a scalar variable to store a random number
  	$roll = int(rand(4));
	#:: Match if random number is 0 (25 percent)
	if ($roll == 0) {
 		#:: Add see special ability see invis
		$npc->ModifyNPCStat("see_invis",  "1");
	}
}

sub EVENT_TIMER {
	#:: Match timer 'depop'
 	if ($timer eq "depop") {
  		#:: stop the timer 'depop' from looping
		quest::stoptimer("depop");
  		#:: Depop without spawn timer
		quest::depop();
	}
}
