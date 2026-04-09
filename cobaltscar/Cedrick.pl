sub EVENT_SAY {
	if (quest::is_omens_of_war_enabled()) {
		if ($text =~ /hail/i) {
			quest::say("So you wish to challenge me, eh? Why else would you be here bearing the Sign of Acceptance. It is your own funeral though. If you still wish to [prove your worth] and ascend to the next level I am ready.");
		}
		elsif ($text =~ /i will prove my worth/i) {
			quest::say("I didnt know slime could speak common.. go back to the sewer before I lose my temper.");
			quest::attack($name);
		}
	}
}

sub EVENT_DEATH {
	if (quest::is_omens_of_war_enabled()) {
		quest::say("You have proven to be successful. Go now and continue your journey.");
	}
}
