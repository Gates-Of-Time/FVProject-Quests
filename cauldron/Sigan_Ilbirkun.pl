sub EVENT_SAY {
	# check faction
	if ($faction > 4) {
		if ($text=~/hail/i) {
			quest::say("Hail!! You are welcome to rest here.");
			quest::signal(70007,5); # send Signal to Ghilanbiddle Nylwadil
		}
		if ($text=~/escort/i) { # escort player to Valley entrance
			quest::say("Yes. Follow me closely!!");
			quest::moveto(-141.75, 1201.45, 141.42, 0) # NPC moves to the set coordinates then path back
		}
 
	} else {
		quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS 
