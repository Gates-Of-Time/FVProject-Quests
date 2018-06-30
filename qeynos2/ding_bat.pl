sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::ding();
	}
	if ($text=~/level/i) {
		if ($ulevel < 50) {
		    quest::level($ulevel+1);
		}
		else {
			quest::castspell(904,$name);
		}
	}
}
