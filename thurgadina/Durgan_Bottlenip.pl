sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("Ye need a swig of some fine dwarven ale!");
	}
}

