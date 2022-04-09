sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("has numerous cracks and holes in his skull from many battles. 'Attention, marine!! You will go into battle and fear nothing! You shall prevail over one enemy and then you shall be sent back into battle! We [shall not allow those sarnak to overtake the Danak shipyards]! Is that clear marine?!!'");
	}
	elsif ($text=~/shall not allow those sarnak to overtake the danak shipyards/i) {
		quest::say("Stand up straight!! That is correct marine!! YOU shall not allow the sarnak to overtake the shipyards!! Head out to the frontlines, marine!! Kill the berzerkers and return their war braids to me!! For every four, you shall earn your wages!! Now get to the front, marine!! Move it!! Move it!!");
	}
}

sub EVENT_ITEM {
	#:: Match four 12982 - Sarnak War Braid
	if (plugin::takeItems(12982 => 4)) {
		quest::say("Great job marine!! Word of your heroics shall be passed on to the Admiral. If you don't have a shield then take one, if you do then get back to the frontlines. There is no time for R n R!! Move it marine!! Or you'll be pushing Danak till the cockatrice crow!!");
		#:: Give a 12981 - Guard of the Marines
		quest::summonitem(12981);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(318, 8); 		#:: + Venril Sathir
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 100 to 250cp
		my %cash = plugin::RandomCash(100, 250);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match three 12982 - Sarnak War Braid
	elsif (plugin::takeItems(12982 => 3)) {
		quest::say("Keep up the good work, marine.");
		#:: Give three 12982 - Sarnak War Braid
		quest::summonitem(12982);
		quest::summonitem(12982);
		quest::summonitem(12982);
	}
	#:: Match two 12982 - Sarnak War Braid
	elsif (plugin::takeItems(12982 => 2)) {
		quest::say("Keep up the good work, marine.");
		#:: Give two 12982 - Sarnak War Braid
		quest::summonitem(12982);
		quest::summonitem(12982);
	}
	#:: Match a 12982 - Sarnak War Braid
	elsif (plugin::takeItems(12982 => 1)) {
		quest::say("Keep up the good work, marine.");
		#:: Give a 12982 - Sarnak War Braid
		quest::summonitem(12982);
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 2
	if ($wp == 2) {
		quest::say("Atteeennntion !!");
		#:: Send a signal '1' to The Overthere >> an_undead_marine (93126) with no delay
		quest::signalwith(93126, 1, 0);
	}
}
