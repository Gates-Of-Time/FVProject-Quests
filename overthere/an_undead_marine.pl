sub EVENT_SIGNAL {
	#:: Match a signal '1' from /overthere/Captain_Rottgrime.pl
	if ($signal == 1) {
		if ($x == 2146 && $y == 2445) {
			quest::say("Sir, yes sir!!");
		}
		elsif ($x == 2151 && $y == 2440) {
			quest::say("Sir, yes sir!!");
		}
		elsif ($x == 2136 && $y == 2453) {
			quest::say("Sir, yes sir!!");
		}
		elsif ($x == 2124 && $y == 2465) {
			quest::say("Sir, yes sir!!");
		}
		elsif ($x == 2130 && $y == 2459) {
			quest::say("Sir, yes sir!!");
		}
		elsif ($x == 2142 && $y == 2448) {
			quest::say("Sir, yes sir!!");
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
