sub EVENT_SAY {
	#:: Create a scalar variable to store a faction value
	$faction = $client->GetCharacterFactionLevel(404);	#:: Truespirit (404)
	if ($faction >= 44) {
		if ($text=~/Hail/i) {
		quest::say("Please help me get out of here! My companion, Kyrenna, and I are trapped in this hellish place!");
		}
		if ($text=~/Who is Kyrenna/i) {
		quest::say("I was with Kyrenna when she attempted to revive the corpse of Glohnor the Valiant. Like fools, we rushed into a trap. Now we sit here and await our deaths.");
		}
		if ($text=~/Where is Kyrenna/i) {
		quest::say("She is close by. For a price, I shall tell you. Bring me the key to my freedom and I will betray her, who sentenced me to this fate.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Create a scalar variable to store a faction value
		$faction = $client->GetCharacterFactionLevel(404);	#:: Truespirit (404)
		if ($faction >= 44) { 
			#:: Match a 14373 - Cell Key
			if(plugin::takeItems(14373 => 1)) {
				quest::say("Kyrenna! We are free!");
				#:: Spawn a The Hole >> Kyrenna (39155)
				quest::spawn2(39155, 0, 0, -195.8, 426.6, -213.9, 230);
				#:: Set factions
				quest::faction(404, 7);		#:: + Truespirit		
				quest::attack($name);
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
