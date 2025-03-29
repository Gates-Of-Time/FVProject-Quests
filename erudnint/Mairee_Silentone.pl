sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if ($text=~/ancient hammer/i) {
			quest::say("Yes, the ancient hammer. I heard something about that. Do you mind if I take a look at it?");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 20478 - Soulbound Hammer
		if(plugin::takeItems(20478 => 1)) {
			quest::emote("makes a few marks on the hammer, and all the while you can hear a muffled cursing coming from the hammer head. 'Yes, it is an ancient dwarf's hammer. Interesting artifact. I've marked it to keep it stable while you retrieve something for me. You need to travel to the Plane of Sky and find a swirling sphere of color. Bring it and the hammer back to me.'");
			#:: Give a 20479 - Dwarven Smiths Hammer
			quest::summonitem(20479);
			#:: Ding!
			quest::ding();
		}#:: Match a 20479 - Dwarven Smiths Hammer and a 20494 - Swirling Sphere of Color
		elsif(plugin::takeItems(20479 => 1, 20494 => 1)) {
			quest::emote("holds the sphere and makes intricate marks and patterns on it, eventually turning the entire crystal clear. She rolls it across the hammer, raising a ringing sound in the room. 'There. Now take the hammer back to Kinlo. He'll know what to do from here. Good luck to you.'");
			#:: Give a 20485 - Hammer of the Ancients
			quest::summonitem(20485);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::emote("will not accept this item.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
