sub EVENT_SAY {
	if ($ext=~/hail/i) {
		quest::emote("must adjust his oversized helm to speak to you. Mummmble.. 'Oh!! There. Hello adventurer. Hope you came to help defend the outpost from goblins and pirates. They have been very active since we opened up the shipping lanes to all.'");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
