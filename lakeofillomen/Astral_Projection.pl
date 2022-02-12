#:: Monk Epic 1.0

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("ignores you.");
	}
}

sub EVENT_ITEM {
	#:: Match if user's class is monk
	if ($class eq "Monk") {
		#:: Match if user's level is over 45
		if ($ulevel > 45) {
			#:: Match a 1687 - Eye of Kaiaren
			if (plugin::takeItems(1687 => 1)) {
				#:: Spawn NPC:  Lake of Ill Omen >> Vorash (85211) at the current location
				quest::spawn2(85211, 0, 0, $x, $y, $z, $h);
				#:: Spawn NPC:  Lake of Ill Omen >> Deep (85223) at the current location
				quest::spawn2(85223, 0, 0, $x, $y, $z, $h);
				#:: Depop with spawn timer active
				quest::depop_withtimer();
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
