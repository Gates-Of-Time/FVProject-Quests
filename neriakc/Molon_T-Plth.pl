sub EVENT_SAY { 
	if ($text=~/hail/i){
		quest::say("Hey! What's up? If you want some real fun, go downstairs at the Maiden's Fancy.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("The Dead shall avenge my death!");
}
