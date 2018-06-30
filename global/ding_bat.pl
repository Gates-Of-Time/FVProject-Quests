sub EVENT_SPAWN {
	quest::settimer("follow",10);
}

sub EVENT_TIMER {
	my $zapf = $entity_list->GetMobByNpcTypeID(2161);
	if ($timer = "follow") {
		quest::follow($zapf);
		quest::stoptimer("follow");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::ding();
	}
	if ($text=~/level/i) {
		if ($ulevel <= 20) {
		    quest::level($ulevel+1);
		}
		elsif ($ulevel >= 21) {
			$npc->CastSpell(808, $userid);
			quest::say("Begone!");
		}
	}
}
