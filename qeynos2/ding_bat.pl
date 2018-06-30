sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::ding();
	}
	if ($text=~/level/i) {
		    quest::level($ulevel+1);
	}
}
