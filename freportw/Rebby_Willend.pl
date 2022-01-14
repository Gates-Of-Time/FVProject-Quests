sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hey friend. nice wallet ya got there.  Bet it's fulla money. huh?  Why don't ya let me take a quick look. huh?");
	}
}

sub EVENT_ITEM {
	#:: Match a 18923 - Message to Rebby
	if (plugin::takeItems(18923 => 1)) {
		#:: Give item 13158 - Rebbys Rat Whiskers
		quest::summonitem(13158);
		#:: Ding!
		quest::ding();
		#:: Grane a small amount of experience
		quest::exp(50);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
