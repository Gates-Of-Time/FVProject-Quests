sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name!  Can't take your valuables with you?  Weighing you down, are they, $name?  Leave them with me.  In my capable hands and in the hands of my capable staff, they will be safe from prying eyes and quick hands!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
