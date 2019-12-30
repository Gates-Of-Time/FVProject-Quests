sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. How nice to meet you, $name!");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 8
	if ($wp == 8) {
		quest::say("Would you please leave me alone?!");
	}
	#:: Match waypoint 9
	elsif ($wp == 9) {
		quest::say("I need to get out of here.");
	}
	#:: Match waypoint 12
	elsif ($wp == 12) { 
		quest::say("Would you please stop following me!!");
	}
	#:: Match waypoint 16
	elsif ($wp == 16) {
		quest::say("I just adore this place.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
