sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Blast!!  Hundreds of goblins to slay and [great treasure] to be had and I am stuck at my post!");
	}
	elsif ($text=~/great treasure/i) {
		quest::say("A fellow paladin who was a member of an expedition into the jungles of Kunark returned with a jade green broadsword.  He said he came across it while they were fighting their way out of some ancient city filled with golems.  They lost many strong troops on that expedition."); 
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
