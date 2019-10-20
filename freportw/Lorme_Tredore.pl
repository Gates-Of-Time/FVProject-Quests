sub EVENT_ITEM {
	#:: Turn in for 18740 - A Tattered Note
	if (plugin::takeItems(18740 => 1 )) {
		quest::say("Welcome to the Academy of Arcane Sciences. I am Lorme Tredore, Master Magician. Here is our guild robe, wear it with pride and represent us well, young $Name. Now, let's get to work.");
		#:: Ding!
		quest::ding();
		#:: Give item 13559 - Used Violet Robe*
		quest::summonitem(13559);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Set faction
		quest::faction(220,100);	 	#:: + Arcane Scientists
		quest::faction(281,25); 		#:: + Knights of Truth
		quest::faction(296,-15); 		#:: - Emerald Warriors
		quest::faction(330,-15); 		#:: - The Freeport Militia
	}
	#:: Turn in for 13951 - Fleshy Orb
	if (plugin::takeItems(13951 => 1 )) {
		quest::say("Ah. Thank you for bringing this to me! I will make very good use of it. Here take this small token of my appreciation in return. Guard Jenkins will no longer require it as he was killed on the training field yesterday. Tsk. tsk. tsk.");
		#:: Ding!
		quest::ding();
		#:: Give item 5353 - Fine Steel Scimitar
		quest::summonitem(5353);
		#:: Give a small amount of xp
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
}	
