sub EVENT_SAY {
	#:: Check faction is Indifferent or better
	if ($faction < 4) {
		if ($text=~/hail/i) {
			quest::say("Hail!! You are welcome to rest here.");
			#:: Send Signal to 70007 Ghilanbiddle Nylwadil
			quest::signal(70007,5);
		}
		#:: Starts the escort player to Valley entrance
		if ($text=~/escort/i) {
			quest::say("Yes. Follow me closely!!");
			#:: NPC moves to the set coordinates then paths back (noguard)
			quest::moveto(-141.75, 1201.45, 141.42, 0);
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
