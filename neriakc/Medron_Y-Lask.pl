sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome to the Furrier Royale. Here you will find the finest skins from a variety of Norraths lesser creatures.");
	}
}

sub EVENT_ITEM { 
	#:: Return unused items
	plugin::returnUnusedItems();
}
