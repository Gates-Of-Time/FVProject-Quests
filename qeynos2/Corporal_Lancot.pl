sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name!  Welcome to the fine city of Qeynos! If you wish to join our fight against the evil gnolls of Blackburrow, be sure to talk to Captain Tillin in the Hall of Steel.");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
