sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Yes. yes.  Scrolls I have, scrolls you need.  Make up your mind quickly.  I don't have all day to stand here talking to you.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
