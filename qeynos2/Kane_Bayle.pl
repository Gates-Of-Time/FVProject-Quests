sub EVENT_SAY {
	if($text =~/hail/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Hail citizen!  I am afraid you are not allowed in this building.  You will have to leave.  Good day to you.");
		}
		else {
			quest::say("How dare you speak with me, the Commander of the Qeynos Guards?!  The reports on you have told me that we look forward to seeing your name on the most wanted list.  Until then, stay far from me or find yourself in shackles!");
		}
	}
	elsif ($text=~/donate to the temple of thunder/i) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {		
			quest::say("Why of course!!  I would love to contribute to your esteemed organization.  I would just hate to see the Knights of Thunder crumble.  What would ever happen to Qeynos if their noble order were gone?!  Perish the thought!");
			quest::summonitem(13292);
		}
		else {
			quest::say("How dare you speak with me, the Commander of the Qeynos Guards?!  The reports on you have told me that we look forward to seeing your name on the most wanted list.  Until then, stay far from me or find yourself in shackles!");
		}
	}
}

sub EVENT_ITEM {
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
