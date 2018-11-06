sub EVENT_SAY {
	#:: Match text for "hail", case insensitive
	if ($text=~/hail/i) {
		#:: Send a message that only the client can see, in yellow text
		$client->Message(15, "With just one look, I can see that you have forgotten the finer points of combat, $name.  Would you like me to [" . quest::saylink("teach") . "] you how to perform the skills that require more discipline than the basics?");
	}
	#:: Match text for "teach", case insensitive
	elsif ($text=~/teach/i) {
		#:: Clear out any existing disciplines
		quest::untraindiscs();
		#:: Train all disciplines up to the user's level
		quest::traindiscs($ulevel, 0);
		#:: Send a message that only the client can see, in yellow text
		$client->Message(15, "You look like a more fierce combatant already! Go out and test your new abilities!");
		#:: Play a Ding! sound
		quest::ding();
	}
}

sub EVENT_ITEM {
	#:: Return unused items since we don't expect any handins
	plugin::returnUnusedItems();
}
