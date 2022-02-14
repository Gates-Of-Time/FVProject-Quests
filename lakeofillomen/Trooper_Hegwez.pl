sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hail. adventurer!  Stay close to the gates or risk your life.  The Lake of Ill Omen is aptly named.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Fear the blades of the Iksar!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You have not won. Consider yourself wanted by the Legion of Cabilis.");
}
