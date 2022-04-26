sub EVENT_SAY {
  if ($text=~/hail/i) {#need correct text	
			if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
				quest::say("Beware these woods! The sarnak claim this land as their own and wicked creatures walk beneath the burning foliage.");
			}
  }
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28056 - Ornate Sea Shell
		if (plugin::takeItems(28056 => 1)) {
			quest::say("Praise the Triumvirate! Natasha sent you just in time! Those twisted sarnak summoners are summoning Ixiblat Fer as we speak! We must stop Ixiblat Fer while he is still weak or all of Norrath may be set aflame! Please do me one more favor, should I perish to this beast of fire. Give this note to Natasha when you next see her, and if you should perish and I survive, I will make sure the waters never forget your reflections of your deeds this day.");
			#:: Give a 28052 - Message to Natasha
			quest::summonitem(28052);
			#:: Ding!
			quest::ding();
			#:: Spawn one and only one Burning Woods >> Ixiblat_Fer (87151), without grid or guild war, at the specified location
			quest::unique_spawn(87151, 0, 0, 1500, -2000, -375);
		}
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}