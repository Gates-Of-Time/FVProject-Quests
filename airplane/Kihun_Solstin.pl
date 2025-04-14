sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("So, you have made it this far. I am Kihun Solstin, the Master of Wind. I control the unfettered Element like none other. As you should have learned, Air is the most potent of Elements. It fuels Fire, Water is comprised of it, and Earth cannot restrain it. Knowing this, do you seek the Element of Wind?");
		}
		elsif ($text=~/i seek the element of wind/i) {
			quest::say("I will test you then. In this wondrous plane of Sky, find the Crown of Elemental Mastery. Then, search the world below for an Elemental Binder and a cloak fashioned from the feathers of a Pegusus. Return them to me and I shall give you the Element of Wind.");
		}
		elsif ($text=~/see the master/i) {
			#:: Spawn a The Plane of Sky >> #Master_of_Elements (71040), without grid or guild war, at the given location
			quest::spawn2(71040,0,0,604.5,1346.3,-766,0);
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20764 - Crown of Elemental Mastery, a 28043 - Elemental Binder and a 2463 - Pegasus Feather Cloak
		if (plugin::takeItems(20764 => 1, 28043 => 1, 2463 => 1)) {
			quest::say("If you have obtained the other, lesser Elements, go speak with The Master of Elements, who is now waiting for you. I wish you luck. If you have not completed all the tasks set for you, let me know, and I shall let you see the Master.");
			#:: Give a 28033 - Element of Wind
			quest::summonitem(28033);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(5000);
			#:: Spawn a The Plane of Sky >> #Master_of_Elements (71040), without grid or guild war, at the given location
			quest::spawn2(71040,0,0,604.5,1346.3,-766,0);
		}
		else {
			quest::say("I have no need for this.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

