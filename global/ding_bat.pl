sub EVENT_SPAWN {
	quest::settimer("follow",10);
	quest::say("Ding!");
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		quest::follow($entity_list->GetMobByNpcTypeID(2161),10);
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
