sub EVENT_AGGRO {
	quest::say("Time to die, $name.");
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 18
	if ($wp == 18) {
		quest::say("Have you noticed anything strange about Commander Bayle lately? I saw him talking to that trouble-making Irontoe the other day and one night late last week, when I was on patrol, I saw him sneaking into Crow's");
		#:: Send a signal "1" to North Qeynos >> Guard_Hezlan (2094) with no delay
		quest::signalwith(2094, 1, 0);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name!  I am sorry but I do not have time to chat, as I must get back to my patrol.  May the Prime Healer walk with you!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
