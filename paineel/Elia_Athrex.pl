sub EVENT_SAY { 
	if($text=~/hail/i){
		quest::say("Hello.  Do you need something or did you merely wish to grace me with your oh-so-delightfully perfumed breath?");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
