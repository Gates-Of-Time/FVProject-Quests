sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I welcome you to the Temple of Marr. home to clerics of the deities Erollisi and Mithaniel Marr.  Please seek guidance from the clerics.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12129 - Part of Potion of Marr
	if (plugin::takeItems(12129 => 1 )) {
		quest::say("Excellent!! I feel quite refreshed with but a sip. You may take this to the next sentry.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Give item 12130 - Part of Potion of MArr
		quest::summonitem(12130);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(258,5); 		#:: + Priests of Marr
		quest::faction(105,-10); 	#:: - Freeport Militia
		quest::faction(184,5); 		#:: + Knights of Truth	
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
