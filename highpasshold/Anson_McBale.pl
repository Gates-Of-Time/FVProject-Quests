sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if($faction <= 5) {
			if($text=~/hail/i) {
				quest::emote("looks at you suspiciously. 'Yeah? Whacha want?'");
			}
			elsif($text=~/i need to see stanos/i && $class eq "Rogue" && $ulevel >= 50) {
				quest::say("This better be important.");
				#:: Spawn a Highpass Hold >> Stanos_Herkanor (5088), without grid or guild war, at the current location
				quest::spawn2(5088,0,0,336.4,10.3,45.7,225.1);
			}
		}
		else {
			quest::say("Go away! We don't have time for the likes of you.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 28014 - Stanos' Pouch
	if (plugin::takeItems(28014 => 1) && $class eq "Rogue" && $ulevel >= 50) {
		quest::say("Oh, I see.");
		#:: Spawn one and only one a Highpass Hold >> Stanos_Herkanor (5088), without grid or guild war, at the current location
		quest::unique_spawn(5088,0,0,336.4,10.3,45.7,225.1);
	}
	else {
		quest::emote("will not accept this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}