sub EVENT_COMBAT {
	if ($combat_state == 1) {
	my $cur_target = $npc->GetHateTop();
		if ($cur_target) {
			my $target_name = $cur_target->GetCleanName();
			quest::say("Time to die $target_name!");
			$random = quest::ChooseRandom(1..4)
			if ($random == 1) {
				quest::say("It's $race" . "s like you who have ruined your own lands.  You'll not ruin mine!");
			}
			elsif ($random == 2) {
				quest::say("Filthy $race" . "s like you must die!");
			}
			elsif ($random == 3) {
				quest::say("$race" . "s like you are better left dead than alive!");
			}
			elsif ($random == 4) {
				quest::say("$race" . "s have no place in our realm!");
			}
		}
	}
}
