sub EVENT_SAY { 
	if($text=~/Hail/i) {
		quest::say("Greetings, $name.  I hope you are having a fine day.");
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20532 - Torch of Misty
		if (plugin::takeItems(20532 => 1)) {
			quest::say("Run onward, my friend, to the far off Desert of Ro and give this torch to Andad Filla.");
			#:: Give a 20533 - Torch of Ro
			quest::summonitem(20533);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("I have no need of this, $name.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
