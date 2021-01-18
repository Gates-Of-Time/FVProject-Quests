sub EVENT_SIGNAL {
	#:: Match a signal '1' from qcat/Sragg_Bloodheart.pl
	if ($signal == 1) {
		quest::say("Huh? What the... oh, no... S'ragg! PLEASE NO! Bertoxxulous save me!");
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Ooh... Aaah!! No! Please! Ouch.... Aarghhhhh!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What?  Who the heck are you and how do you know my name?!  Never mind... Just leave me alone!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
