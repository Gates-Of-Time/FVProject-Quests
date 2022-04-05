sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("turns to greet you. You see an odd item jutting from his belt pouch. 'Greetings. Report to one of the outpost captains for duty. You enter our outpost and then you must assist in it's defense.'");
	}
	elsif ($text=~/belt pouch/i) {
		quest::say("'It is a telson I recovered from the body of some horrid man scorpion creature. I thought it would make a fine dagger, you know, something a bit different. Unfortunately it carries some venom with it and I, being a paladin, refuse to employ such a thing in combat. Perhaps I shall sell it to one of the scouts or trackers.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
