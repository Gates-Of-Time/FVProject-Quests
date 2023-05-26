sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("So, you have made it this far. I am Kihun Solstin, the Master of Wind. I control the unfettered Element like none other. As you should have learned, Air is the most potent of Elements. It fuels Fire, Water is comprised of it, and Earth cannot restrain it. Knowing this, do you seek the Element of Wind?");
	}
	elsif ($text=~/i seek the element of wind/i) {
		quest::say("I will test you then. In this wondrous plane of Sky, find the Crown of Elemental Mastery. Then, search the world below for an Elemental Binder and a cloak fashioned from the feathers of a Pegusus. Return them to me and I shall give you the Element of Wind.");
	}
	elsif ($text=~/see the master/i) {
		#:: This text is made up
		quest::say("Very well.");
		#:: Spawn one and only one airplane >> The Master of Elements (71040), without grid or guild water, at the specified coordinates
		quest::unique_spawn(71040, 0, 0, 604.5, 1346.3, -766.0);
	}
}

sub EVENT_ITEM {
	#:: Match a 20764 - Crown of Elemental Mastery, 28043 - Elemental Binder, and 2463 - Pegasus Feather Cloak
	if (plugin::takeItems(20764 => 1, 28043 => 1, 2463 => 1)) {
		quest::say("If you have obtained the other, lesser Elements, go speak with The Master of Elements, who is now waiting for you. I wish you luck. If you have not completed all the tasks set for you, let me know, and I shall let you see the Master.");
		#:: Match a 28033 - Element of Wind
		quest::summonitem(28033);
		#:: Give 5,000 experience
		quest::exp(5000);
		#:: Spawn one and only one airplane >> The Master of Elements (71040), without grid or guild water, at the specified coordinates
		quest::unique_spawn(71040, 0, 0, 604.5, 1346.3, -766.0);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}