sub EVENT_SPAWN {
	quest::set_timer("depop", 1800 * 1000);
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote(" swims toward you in a blood frenzy.");
	}
}

sub EVENT_TIMER {
	#:: Match if timer named "depop"
	if ($timer eq "depop") {
		#:: Stop the timer "depop"
		quest::stoptimer("depop");
		#:: Depop with spawn timer active
		quest::depop();
	}
}