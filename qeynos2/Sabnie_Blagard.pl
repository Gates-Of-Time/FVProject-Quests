sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, thirsty traveler!  I recommend trying Crow's special brew.  It's the brew that put Qeynos on the map!");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 10
	if ($wp == 10) {
		quest::say("Did someone order an ale up here?");
		#:: Send a signal "1" to North Qeynos >> Tubal_Weaver (2062) with no delay
		quest::signalwith(2062, 1, 0);
	}
	#:: Match waypoint 18
	elsif ($wp == 18) {
		quest::say("Tubal doesn't suspect a thing.. the poor sap.");
		#:: Send a signal "3" to North Qeynos >> Crow (2063) with no delay
		quest::signalwith(2063, 3, 0);
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Tubal_Weaver.pl
	if (($signal == 1) && ($x == 368) && ($y == 82)) {
		quest::say("Um, sure. Be right.. um.. up.");
		#:: Send a signal "1" to North Qeynos >> Crow (2063) with no delay
		quest::signalwith(2063, 1, 0);
	}
	#:: Match a signal "2" from /qeynos2/crow.pl
	elsif ($signal == 2) {
		quest::say("Yes. Fine. That guy just gives me the creeps is all.");
		#:: Send a signal "1" to North Qeynos >> Crow (2063) with no delay
		quest::signalwith(2063, 2, 0);
	}
	#:: Match a signal "3" from /qeynos2/Tubal_Weaver.pl
	elsif ($signal == 3) {
		quest::say("No. No. He is clueless. I've missed you so.");
		#:: Send a signal "2" to North Qeynos >> Tubal_Weaver (2062) with no delay
		quest::signalwith(2062, 2, 0);
	}
	#:: Match a signal "4" from /qeynos2/Tubal_Weaver.pl
	elsif ($signal == 4) {
		quest::say("Please be careful. I don't know what I would do if anything happened to you.");
		#:: Send a signal "3" to North Qeynos >> Tubal_Weaver (2062) with no delay
		quest::signalwith(2062, 3, 0);
	}
	#:: Match a signal "5" from /qeynos2/crow.pl
	elsif ($signal == 5) {
		quest::say("No! um.. no. That's ok. He's just a little weird, that's all. Nothing to worry about.");
	}
	#:: Match a signal "6" from /qeynos2/Flynn_Merrington.pl
	elsif ($signal == 6) {
		quest::say("Hee hee hee! Oh.. how sad! HEE HEE HEE HEE HEE!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
