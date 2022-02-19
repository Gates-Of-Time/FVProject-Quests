sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Much beauty can be found upon the skins of our enemies.  And... even upon that of our own allies?");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
