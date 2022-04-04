sub EVENT_AGGRO {
	quest::emote("performs an acrobatic tumble and unsheathes his foil without pause. Short, stout and deadly am I. Stand and deliver!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
