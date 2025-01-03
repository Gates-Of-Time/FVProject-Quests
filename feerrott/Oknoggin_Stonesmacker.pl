sub EVENT_SAY { 
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if($text=~/Hail/i) {
			quest::say("Yoo leave me 'lone!"); 
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20673 - Wax Sealed Note
		if (plugin::takeItems(20673 => 1)) {
			quest::emote("snatches the note from your hand and rips it open with his large hands.");
			quest::say("You take dis to Kargek. He want!");
			#:: Give a 20674 - Tiny Lute
			quest::summonitem(20674);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(1000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
