sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::ding();
	}
	if ($text=~/level/i) {
		if ($ulevel <= 20) {
		    quest::level($ulevel+1);
		}
		elsif ($ulevel > 21) {
			$npc->CastSpell(904, $userid);
			quest::say("Begone!");
		}
	}
}
