sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, merry gentlefolk! If you enjoy the music, please feel free to cross my palm with gold.");
	}
}

sub EVENT_ITEM {
	#:: Match 2 gold
	if (plugin::takeCoin(200)) {
		quest::say("Rat spittle! Busted another string! You seem like a good music loving citizen, could you please run to the Wind Spirit's Song and grab me a fresh set of lute strings?");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(192,5);		#:: + League of Antonican Bards
		quest::faction(184,5);		#:: + Knights of Truth
		quest::faction(135,5);		#:: + Guards of Qeynos
		quest::faction(273,-5);		#:: - Ring of Scale
		quest::faction(207,-5);		#:: - Mayong Mistmoore
	}
	#:: Match 13709 - Lute Strings
	if (plugin::takeItems(13709 =>1)) {
		my $random_lute_strings_message = int(rand(5)) +1;
		if ($random_lute_strings_message == 4) {
			quest::say("Many thanks, merry gentlefolk! Let me cross your palm in gratitude for your kindness. Hmmmm where did my lucky coin go?");
			#:: Give a 13710 - Etched Silver Coin
			quest::summonitem(13710);
		} else {
			quest::say("Many thanks, merry gentlefolk! Let me cross your palm in gratitude for your kindness.");
		}
		#:: Ding!
		quest::ding();
		#:: Give a moderate amount of experience
		quest::exp(5000);
		#:: Grant between 1200 and 2200 copper coins
		%cash = plugin::RandomCash(900,2000);
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum}); 
		#:: Set factions
		quest::faction(192,5);		#:: + League of Antonican Bards
		quest::faction(184,5);		#:: + Knights of Truth
		quest::faction(135,5);		#:: + Guards of Qeynos
		quest::faction(273,-5);		#:: - Ring of Scale
		quest::faction(207,-5);		#:: - Mayong Mistmoore		
	}
	#:: Match a 13710 - Etched Silver Coin
	if (plugin::takeItems(13710 =>1)) {
		quest::say("'My lucky coin! How did it get in there? Well, never mind that. You are an honest person and although honesty is its own reward, I feel obligated to return the favor. Take this to Dionna if you enjoy music. Farewell friend!");
		#:: Give a 13708 - Note from Fabian
		quest::summonitem(13708);
		#:: Ding!
		quest::ding();
		#:: Give a moderate amount of experience
		quest::exp(5000);
		#:: Grant between 1200 and 2200 copper coins
		%cash = plugin::RandomCash(900,2000);
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum}); 
		#:: Set factions
		quest::faction(192,5);		#:: + League of Antonican Bards
		quest::faction(184,5);		#:: + Knights of Truth
		quest::faction(135,5);		#:: + Guards of Qeynos
		quest::faction(273,-5);		#:: - Ring of Scale
		quest::faction(207,-5);		#:: - Mayong Mistmoore
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}							
