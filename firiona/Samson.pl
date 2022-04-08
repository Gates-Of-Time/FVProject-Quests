sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("begins to stroke the nearby brew barrel. What will it be? Me and Old Girty here make the finest brew this side of Timorous Deep. Afraid I am the only one who is allowed to touch her, she's very special to me. If you want to brew yourself, you can start looking for that [jungle city].");
	}
	elsif ($text=~/jungle city/i) {
		quest::say("I've heard adventurers talk of a city deep in the jungles. They say the dead walk its streets. Many have claimed to discover great treasures there as well as to lose many friends. I also heard it may have a working brew barrel.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
