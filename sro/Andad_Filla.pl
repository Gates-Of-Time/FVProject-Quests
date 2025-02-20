sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hello traveler, please do not bother me right now; I am waiting for someone.");
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20533 - Torch of Ro
		if (plugin::takeItems(20533 => 1)) {
			quest::say("You still have a ways to go! Seek out Misty Tekcihta near the arena at Lake Rathe. Run like the wind!");
			#:: Give a 20534 - Torch of Rathe
			quest::summonitem(20534);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}