my $kick_avail;

sub EVENT_COMBAT {
		$kick_avail = 1;
		#:: Set a timer to loop every 1 seconds
		quest::settimer("kickthatface", 1);
}

sub EVENT_TIMER {
	#:: Match timer "kickthatface"
	if ($timer eq "kickthatface") {
		if ($kick_avail == 1) {
			$target = $npc->GetHateTop();
			if ( $mob->CombatRange($target)) {
				$mob->DoMeleeSkillAttackDmg($target, 3500, 30);
				$kick_avail = 0;
				#:: Set a timer to loop every 8 seconds
				quest::settimer("resetkick", 8);
			}		
		}
	}
	#:: Match timer "resetkick"
	else if ($timer eq "resetkick") {
		$kick_avail = 1;
	}
}
