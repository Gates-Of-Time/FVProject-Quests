sub EVENT_SAY {
	if($text=~/hail/i){
		quest::emote("has numerous cracks and holes in his skull from many battles. 'Attention, marine!! You will go into battle and fear nothing! You shall prevail over one enemy and then you shall be sent back into battle! We [shall not allow those sarnak to overtake the Danak shipyards]! Is that clear marine?!!'");
	}
	elsif($text=~/shall not allow those sarnak to overtake the danak shipyards/i){
		quest::say("Stand up straight!! That is correct marine!! YOU shall not allow the sarnak to overtake the shipyards!! Head out to the frontlines, marine!! Kill the berzerkers and return their war braids to me!! For every four, you shall earn your wages!! Now get to the front, marine!! Move it!! Move it!!");
	}
}

sub EVENT_ITEM {
	#:: Match a 12982 - Sarnak War Braid
	if (plugin::takeItems(12982 => 4)) {
		quest::say("Great job marine!! Word of your heroics shall be passed on to the Admiral. If you don't have a shield then take one, if you do then get back to the frontlines. There is no time for R n R!! Move it marine!! Or you'll be pushing Danak till the cockatrice crow!!");
    	#:: Give item 12981 - Guard of the Marines
		quest::summonitem(12981);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(318,10); 		#:: + Venril Sathir
		#:: Grant a small amount of experience
    	quest::exp(10);
		#:: Grant a small cash reward
    	quest::givecash(0,0,1,0);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_ARRIVE {
	if($wp==2) {
		quest::say("Atteeennntion !!");
		quest::signal(93126);
	}
}
