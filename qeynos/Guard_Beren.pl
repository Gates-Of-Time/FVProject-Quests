sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want? Are you friends with that lousy [" . quest::saylink("dwarf") . "]?! You had better not be unless you want to spend the rest of the week bleeding!");
	}
	elsif ($text=~/dwarf/i) {
		quest::say("That dwarf, Trumpy, who Corshin here thinks is a friend of Commander Bayle's, keeps pestering my poor brother Faren. I have had just about enough of him and [" . quest::saylink("his kind") . "].");
	}
	elsif ($text=~/his kind/i) {
		quest::say("You know... thieves, drunks and murderers. Decent folk just don't have a chance anymore.");
	}
	elsif ($text=~/faren/i) {
		quest::say("My brother Faren is a fine fisherman just like our father was. He fishes out there on the East Dock just about every day.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match when NPC arrives at waypoint 5
	if ($wp == 5) {
		quest::say("How are they biting, little brother?");
		#:: Send a signal "1" to South Qeynos >> Faren (1159) with no delay
		quest::signalwith(1159,1,0);
	}
}

sub EVENT_SIGNAL {
	#:: Match signal from qeynos/Lieutenant_Arathur.pl
	if (($signal == 1) && ($x == -145 && $y == -247)) {
		quest::say("Yes, sir!");
	}
	#:: Match signal from qeynos/Faren.pl
	elsif ($signal == 2) {
		quest::say("Don't you worry about him! I will take care of Trumpy Irontoe once and for all!");
	}
	#:: Match signal from qeynos/Guard_Corshin.pl
	elsif (($signal == 5) && ($x == -145 && $y == -247)) {
		quest::say("Heh, Speak for yourself, Corshin. That one looks like a troublemaker to me.");
	}
}
