sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("This unit is not designed for casual conversation. Please move along. Click...");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	#:: Spawn a Ak'Anon >> Clockwork_MM (55164) at the current coordinates
	quest::spawn2(55164, 0, 0, $x, $y, $z, $h+256);
}
