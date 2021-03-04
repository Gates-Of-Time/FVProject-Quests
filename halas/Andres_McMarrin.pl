sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! I patrol Halas to insure the safety of the travelers and the resident clans.  Just ask if you need help in finding your destination.");
	}
	elsif ($text=~/shaman of justice/i) {
		quest::say("The Shamans of Justice serve the will of the Tribunal. They search out those who defy the laws set by the Tribunal.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
