sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, $name.  Fear not for your valuables.  I have known Marsa for many years and she has not once taken anyone's property.  She is, perhaps, the last honest person in this city.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
