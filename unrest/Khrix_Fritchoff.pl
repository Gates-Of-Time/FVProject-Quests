sub EVENT_SAY {
	#:: Match any text
	if ($text) {
		quest::say("Close the door and be gone fool! You are going to give away my hiding spot!");
	}
}

sub EVENT_ITEM {
	#:: Match a 10400 -  Greater Lighstone
	if (plugin::takeItems(10400 => 1)) {
		quest::say("At last I may leave this place!! Good luck destroying my abomination, you will surely need it against my most powerful yet uncontrolable creation!");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(238, 1); 		#:: + Dark Reflection
		quest::faction(245, -1); 		#:: - Eldritch Collective
		quest::faction(255, -1); 		#:: - Gem Choppers
		quest::faction(240, -1); 		#:: - Deep Muses
		#:: Grant a small amount of experience
		quest::exp(1000);
		#:: Spawns a The Estate of Unrest >> Khrix_Abomination (63111) at the specified coordinates
		quest::spawn2(63111, 0, 0, 60, 622, 20, 0);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
