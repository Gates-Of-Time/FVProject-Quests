sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Heh?  $name, huh?  What do you want?  Can't you see I am a busy man, guarding and protecting you weaklings..  er.. citizens?  You better just move along before something happens to you!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
