sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("has a massive scar on his face. 'Hail, and welcome to the outpost of Firiona Vie! If you plan on exploring, I suggest you get well equipped. There are no cities beyond here. I would also suggest joining the next group heading out on an expedition. This is no place to travel alone.'");
	}
	elsif ($text=~/scar/i) {
		quest::emote("places his hand over his scar. Accursed dogs. A little reminder of my expedition into a castle within the wilds. We lost many. All I have to show for that is this scar, an ancient cutting tool I found along the way and a pair of fading boots.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
