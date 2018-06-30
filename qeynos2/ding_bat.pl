sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::ding();
	}
	if ($text=~/level/i) {
		if ($ulevel <= 45) {
		    quest::level($ulevel+1);
		}
		elsif ($ulevel > 45) {
			$npc->CastSpell(904, $userid);
		}
	}
}
