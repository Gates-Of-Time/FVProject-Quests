sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("holds his fist up to you. 'You'll get this if you even think of attempting to use our forge!! Find your own. Go off looking in the dungeons of Kunark. Maybe you will even find a magical forge. Bah!! You adventurers think you can have run of everything.'");
	}
	elsif ($text=~/magical forge/i) {
		quest::emote("chortles to himself. Hehe. 'Magical forges? You sound like the one bloke who came hunting for information about some magic forge which could only be used for certain magic items and only with magical forge hammers. Hehe. You adventurers spend to much of your life camping in the wilderness.'");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
