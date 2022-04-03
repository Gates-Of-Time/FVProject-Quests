sub EVENT_ITEM {
	#:: Match a 28048 - Orb of Clear Water, a 28049 - Orb of Frozen Water, and a 28050 - Orb of Vapor
	if (plugin::takeItems(28048 => 1, 28049 => 1, 28050 => 1)) {
		quest::emote("kneels in the sand and places the three orbs into a large abalone shell bowl. A blue glow surrounds his hands as he waves them over the orbs resting in the bowl. The orbs crack and fall apart, releasing their contents, then reform into a single glowing orb. Jhassad Oceanson gently removes the Orb of the Triumvirate and places it in your hands.");
		quest::say("The Avatar of Water approaches. You must hand him the Orb of the Triumvirate and it will be decided if it is your destiny to wield the Nem Ankh Sprinkler."); 
		#:: Give a 28023 - Orb of the Triumvirate
		quest::summonitem(28023);
		#:: Spawn one and only one Timorous Deep >> Avatar_of_Water (96086) on grid 21, without guild war, at the specified coordinates
		quest::unique_spawn(96086, 21, 0, -1886, -11661, 1, 384);
		#:: Depop without spawn timer active
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
