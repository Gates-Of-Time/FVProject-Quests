sub EVENT_COMBAT {
	#:: Match combat_state 1 (true) for entered combat
	if ($combat_state == 1) {
		my $RandomResult = quest::ChooseRandom(1, 2, 3);
		if ($RandomResult == 1) {
			quest::say("Death!!  Death to all who oppose the Crushbone orcs!!");
		}
		elsif ($RandomResult == 2) {
			quest::say("Hail, Emperor Crush!!");
		} 
		else {
			quest::say("Fall before the might of Clan Crushbone!!");
		}
	}
}
