sub EVENT_SPAWN {
	#:: Set a timer 'Depop' that triggers every 90 seconds
	quest::settimer("Depop", 90);
}

sub EVENT_TIMER {
	#:: Match timer 'Depop'
	if ($timer eq "Depop") {
		quest::emote("seems to lose a small amount of concentration.");
		#:: Spawn a Timorous Deep >> Master_Rinmark (96319) without grid or guildwar, at the current location
		quest::spawn2(96319, 0, 0, $x, $y, $z, $h);
		quest::stoptimer("Depop");
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
