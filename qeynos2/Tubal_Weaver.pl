sub EVENT_AGGRO {
	quest::say("Hey! I still remember enough from my days in Highpass to kick your weakling butt! Guards! Help!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name!  I am Tubal Weaver, humble merchant and retired guardsman of Highkeep.  I make a tidy living dealing with the throngs of adventurers who take it upon themselves to keep Qeynos beetle-free.  If you want some free advice, I recommend that you not deal with any of the merchants in town.  I can offer much lower prices than they because I do not have the overhead of a shop to maintain.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 2
	if ($wp == 2) {
		quest::say("Whew. I am parched. I will be back in a few minutes.");
		#:: Close down shop for a trip to Crow's
		$npc->MerchantCloseShop();
	}
	#:: Match waypoint 15
	elsif ($wp == 15) {
		quest::say("Hey sweetheart, I'll have my usual. Could you bring it upstairs for me?");
		#:: Send a signal "1" to North Qeynos >> Sabnie_Blagard (2083) with no delay
		quest::signalwith(2083, 1, 0);
	}
	#:: Match waypoint 38
	elsif ($wp == 38) {
		quest::say("Hey, hey, hey! Tubal Weaver open for business!");
		#:: Open shop
		$npc->MerchantOpenShop();
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Sabnie_Blagard.pl
	if (($signal == 1) && ($x == 372) && ($y == 37)) {
		quest::say("Is he wise to us?");
		#:: Send a signal "3" to North Qeynos >> Sabnie_Blagard (2083) with no delay
		quest::signalwith(2083, 3, 0);
	}
	#:: Match a signal "2" from /qeynos2/Sabnie_Blagard.pl
	elsif ($signal == 2) {
		quest::say("Well, we won't have to worry about him much longer. I have some friends coming into town who owe me the kind of debt you can't repay with gold.");
		#:: Send a signal "4" to North Qeynos >> Sabnie_Blagard (2083) with no delay
		quest::signalwith(2083, 4, 0);
	}
	#:: Match a signal "3" from /qeynos2/Sabnie_Blagard.pl
	elsif ($signal == 3) {
		quest::say("Don't you worry, sugar, his days are numbered. You better get back before he suspects something. We'll be together soon enough.");
	}
}
