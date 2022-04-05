sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Have you found any useless items among the beasts of these plains? You will find most can be traded to someone within the outpost. I once traded tump stumps to some little halfling. He ended up giving me some worthless branch only a druid would appreciate.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
