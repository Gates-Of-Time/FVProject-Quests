sub EVENT_ITEM {
	#:: Turn in for 13861 - A jar of liquid
	if (plugin::takeItems(13861 => 1 )) {
		quest::emote("darts into the jar, or just darted past it!! The Knights of Truth do not tolerate people attempting to catch these fish!!");
		#:: Ding!
		quest::ding();
		#:: Give a random item of: 13861 - A Jar of Liquid, or 13862 - Fish in a Jar
		quest::summonitem(quest::ChooseRandom(13861,13862));
		#:: Set faction
		quest::faction(86,1); 			#:: + Dismal Rage
		quest::faction(184,-2); 		#:: - Knights of Truth
		quest::faction(105,1); 			#:: + The Freeport Militia
		quest::faction(258,-2); 		#:: - Priests of Marr
		quest::faction(311,-2); 		#:: - Steel Warriors
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
