sub EVENT_SPAWN {
		#:: Create a timer 'depop' that triggers every 3000 seconds (50 min)
		quest::settimer("depop", 3000);
}

sub EVENT_DEATH {
	my $random_cast = int(rand(100)) + 1;
	if($random_cast < 75) {
		#:: Cast spell 1017 - Fish Nova
		$npc->CastSpell(1017, $target->GetID());
	}
}

sub EVENT_TRADE {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match the timer 'depop'
	if ($timer eq "depop") {
		#:: Step the timer 'depop'
		quest::stoptimer("depop");
		#:: Depop without spawn timer
		quest::depop();
	}
}