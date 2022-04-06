sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Arm yourself!! Only the fittest and most well equipped adventurers ever return from the wilds. Those who do return with great trophies and far fetched tales of glory.");
	}
	elsif ($text=~/great trophies/i) {
		quest::say("I have seen a deathwatch sword, a raven tail whip and even something they called true silver armor. And all those were from but one single trek into the depths of ruins which lie in a dustbowl of undead.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
