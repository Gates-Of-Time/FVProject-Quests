sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::emote("smiles and taps her foot.");
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20534 - Torch of Rathe
		if (plugin::takeItems(20534 => 1)) {
			quest::emote("hands you a small ring.");
			#:: Give a 20379 - Proof of Speed
			quest::summonitem(20379);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
