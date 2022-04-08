sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Next!! Oh, is that you? Well go ahead and make your transaction. Ho.. Humm. A beautiful woman such as myself should not have to work alongside her bookish brother day and night. I long to return to Felwithe and it's majesty. Only marriage would release me from this droll servitude.");
	}
	elsif ($text=~/marry you/i) {
		quest::emote("begins to blush. 'Oh, you are far too kind, but you are an adventurer. You would be away and in danger far too frequently. My heart could not take your absence for more than a hour. Thank you anyway. For your kind words let me inform you of something I [overheard].'");
	}
	elsif ($text=~/overheard/i) {
		quest::say("I have heard of a powerful emperor of the lizard race. His soul has not been released from this realm and he wanders the land in a spectral state. It is said with him lies the key to great treasure. Where he is, I am afraid I do not know.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
