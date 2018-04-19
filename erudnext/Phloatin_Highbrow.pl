sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Ahoy there, Sailor!");
	}
}

sub EVENT_SIGNAL {
	#:: Signal from erudnext/Helia_Bluehawk.pl
	quest::say("Ha! The closest you will get to tonic is in the library. That's assuming you know how to spell tonic. Bwaha ha! When you see the bookworm give her a KISS for me! HAHA!!");
	#:: send a signal to 24067 - Helia_BlueHawk
	quest::signal(24067,51);
}
