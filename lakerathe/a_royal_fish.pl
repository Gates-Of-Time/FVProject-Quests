sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("flutters about and seems to be staring back at you as if reading and understanding your thoughts!!");
	}
}

sub EVENT_ITEM { 
	#:: Match a 12271 - Fish Food
	if (plugin::takeItems(12271 => 1)){
		quest::emote("gladly gulps up your odd mixture and transforms into..!!");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(5001, 10);	#:: + Anti-mage
		quest::faction(226, 10);	#:: + Clerics of Tunare
		quest::faction(279, 10);	#:: + King Tearis Thex
		#:: Depop with spawn timer active
		quest::depop_withtimer();
		#:: Spawn a Lake Rathetear >> Princess_Lenya_Thex (51176) at the current location
		quest::unique_spawn(51176, 0, 0, $x, $y, $z, $h);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
