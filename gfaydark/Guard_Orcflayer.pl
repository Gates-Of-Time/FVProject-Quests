sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Keep a sharp eye open for those nasty orcs! I know they've been trying to get up into Kelethin, but I'm sworn to protect the elves from their dastardly deeds.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
