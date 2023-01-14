sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
	my $cur_target = $npc->GetHateTop();
		if ($cur_target) {
			#:: Create a scalar variable to store the target's clean name
			my $target_name = $cur_target->GetCleanName();
			#:: Create a scalar variable to store the plural race name
			$raceplural = "${race}s";
			#:: Create a scalar variable to store a random number from 1 - 4
			my $random = int(rand(4)) + 1;
			if ($random == 1) {
				quest::say("It's $raceplural like you who have ruined your own lands.  You'll not ruin mine!");
			}
			elsif ($random == 2) {
				quest::say("Filthy $raceplural like you must die!");
			}
			elsif ($random == 3) {
				quest::say("$raceplural like you are better left dead than alive!");
			}
			elsif ($random == 4) {
				quest::say("$raceplural have no place in our realm!");
			}
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
