sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to Ironforge Jewelers. We are the finest jewelers this side of the Serpent's Spine.");
	}
	elsif ($text=~/tayla/i) {
		quest::say("Tayla is our poor dear sweet half sister. She has runaway to live with those closer to her kind.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
