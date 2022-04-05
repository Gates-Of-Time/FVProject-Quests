sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Whoa!!  Hold up there, adventurer!  Gaze upon the fine packs and containers I have available.  Such fine items could only be crafted by a Fier'Dal tailor.  And lucky you!!  You made it here just as I lowered my prices.  How can you resist these bargains?  I am taking a loss here!!  Last day!!  Buy now!!");
		#:: Do animation 49 - Lean Back
		quest::doanim(49);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
