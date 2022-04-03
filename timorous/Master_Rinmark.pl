sub EVENT_SPAWN {
	#:: Set a timer 'Depop' that triggers every 90 seconds
	quest::settimer("Depop", 90);
}

sub EVENT_TIMER {
	#:: Match timer 'Depop'
	if ($timer eq "Depop") {
		quest::emote("stares off into the horizon, lost in his thoughts.");
		#:: Spawn a Timorous Deep >> Rinmark (96320) without grid or guild war, at the current coordinates
		quest::spawn2(96320, 0, 0, $x, $y, $z, $h);
		quest::stoptimer("Depop");
		#:: Depop without spawn timer active
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
