sub EVENT_ITEM {
	#:: Turn in for 18739 -  A tattered note
	if (plugin::check_handin(\%itemcount, 18739 => 1)) {
		quest::say("Welcome to the Academy of Arcane Sciences. Here's one of our guild robes for you to wear. Now, let's get to work.");
		#:: Give item 13558 - Patched Violet Robe
		quest::summonitem(13558);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(296,-15); 	#:: - Opal Dark Briar
		quest::faction(220,100); 	#:: + Arcane Scientists
		quest::faction(281,25); 	#:: + Knights of Truth
		quest::faction(330,-15); 	#:: - The Freeport Militia
	}
	plugin::return_items(\%itemcount);
}
