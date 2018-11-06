sub EVENT_SAY {
	#:: Match text for "hail", case insensitive
	if ($text=~/hail/i) {
		#:: Send a message that only the client can see, in yellow (15) text
		$client->Message(15, "Hello, $name!  It appears you could use some help with your [" . quest::saylink("skills") . "].  Would you like me to teach you?");
	}
	#:: Match text for "skills", case insensitive
	elsif ($text=~/skills/i) {
		#:: Set available (non-trade, non-casting specialization) skills to maximum for race/class at current level
		foreach my $skill ( 0 .. 42, 48 .. 54, 70 .. 74 ) {
		next unless $client->CanHaveSkill($skill);
		#:: Create a scalar variable to store each skill's maximum skill level at the player's current level
		my $maxSkill = $client->MaxSkill($skill, $client->GetClass(), $ulevel);
		#:: Check that the player's skill does not already exceed the maximum skill based on level
		next unless $maxSkill > $client->GetRawSkill($skill);
		#:: Set the skill to the maximum
		$client->SetSkill($skill, $maxSkill);
		#:: Send a message that only the client can see, in yellow (15) text
		$client->Message(15, "You look like a more capable $class already! Go out and test your new skills!");
		#:: Play a Ding! sound
		quest::ding();
	}
}

sub EVENT_ITEM {
	#:: Return unused items since we don't expect any handins
	plugin::returnUnusedItems();
}
