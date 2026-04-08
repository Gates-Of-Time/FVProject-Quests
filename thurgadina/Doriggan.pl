sub EVENT_SPAWN {
	#:: Set appearance to Sit
	$npc->SetAppearance(1);
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "1"
	if ($signal == 1) {
		quest::emote("snores loudly");
	}
	#:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "2"
	elsif ($signal == 2) {
		quest::say("OWW!");
	}
	#:: Match if signal from thurgadina/Grand_Historian_Thoridain.pl is "3"
	elsif ($signal == 3) {
		quest::say("Yes, Grand Historian Thoridain");
		#:: Start path grid 11
		quest::start(11);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 5) {
		quest::stop();
		#:: Set appearance to Sit
		$npc->SetAppearance(1);
	}
}

