sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name.  Obyn is my name.  Are you from Qeynos?  I was born here myself.  It's the best city in all of Norrath, if you ask me.  Well I'd better get back to guarding.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
