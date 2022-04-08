sub EVENT_SPAWN {
	#:: Create a timer 'ZoneTime' that triggers every 30 seconds
	quest::settimer("ZoneTime", 30);
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("looks over at you and gives you an awkward smile, then quickly looks away. You notice he isn't like most of the elves you've seen. You can't quite put your finger on it, but for one thing he smells like he hasn't bathed in weeks.");
	}
}

sub EVENT_TIMER {
	#:: Match timer 'ZoneTime'
	if ($timer eq "ZoneTime") {
		#:: Match if zone time is 21:00
		if ($zonehour == 21) {
			#:: Spawn one and only one Firiona Vie >> Tracker_Azeal_ (84028) with no grid or guild war set, at the current location
			quest::unique_spawn(84028, 0, 0, $x, $y, $z);
			quest::stoptimer("ZoneTime");
			quest::depop_withtimer();
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
