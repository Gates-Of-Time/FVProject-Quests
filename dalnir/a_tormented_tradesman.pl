sub EVENT_ITEM {
	#:: Match a 3889 - Mirror of Self-loathing
	if (plugin::takeItems(3889 => 1)) {
		quest::emote("The undead entity looks in the mirror and appears to be stunned by the memory of his former self. He drops the mirror, which causes it to crack slightly. You immediately grab it and place it back in your bag. The spirit looks at you and begins to transform. Ethereal strands of muscle, blood, and flesh come together and the Haggle Baron Dalnir appears.");
		#:: Give a 3896 - Cracked Mirror of Self-Loathing
		quest::summonitem(3896);
		#:: Ding!
		quest::ding();
		#:: Spawn one and only one Crypt of Dalnir >> Haggle_Baron_Dalnir (104075), without grid or guild war, at the current location
		quest::unique_spawn(104075,0,0,$x,$y,$z,$h);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	#:: Match a 3896 - Cracked Mirror of Self-Loathing
	elsif (plugin::takeItems(3896 => 1)) {
		quest::emote("The undead entity looks in the mirror and appears to be stunned by the memory of his former self. He drops the mirror, which causes it to crack slightly. You immediately grab it and place it back in your bag. The spirit looks at you and begins to transform. Ethereal strands of muscle, blood, and flesh come together and the Haggle Baron Dalnir appears.");
		#:: Ding!
		quest::ding();
		#:: Spawn one and only one Crypt of Dalnir >> Haggle_Baron_Dalnir (104075), without grid or guild war, at the current location
		quest::unique_spawn(104075,0,0,$x,$y,$z,$h);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
