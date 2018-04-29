sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, adventurer! I am sure you are thirsty after that long boat ride from Qeynos!");
	}
}

sub EVENT_SIGNAL {
	#:: Signal from erudnext/Phloatin_Highbrow.pl
	quest::say("Pipe down, Phloatin! Treat the new clientele with respect.");
}
