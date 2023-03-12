sub EVENT_SPAWN {
	#:: Create a timer 'sleep' that loops every 1 second	
	quest::settimer("sleep", 1);
}

sub EVENT_TIMER {
	#:: Match timer 'sleep'
	if ($timer eq "sleep") {
		#:: Stop timer 'sleep'
		quest::stoptimer("sleep");
		#:: 0 = Stand, 1 = Sit, 2 = Duck, 3 = Feign Death, 4 = Kneel
		$npc->SetAppearance(3);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("yawns, and utters some gibberish, then falls back asleep.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
