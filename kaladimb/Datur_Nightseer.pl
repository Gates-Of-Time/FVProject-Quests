sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
	#:: Match a 18768 - Folded Parchment
	if (plugin::check_hasitem($client, 18768)) { 
		$client->Message(15,"Datur Nightseer glances your way. 'Ah a new recruit! Welcome, young one! Read the note in your inventory and then hand it to me when you wish to begin your training!'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18768 - Folded Parchment
	if (plugin::takeItems(18768 => 1)) {
		quest::say("Welcome, we are the Paladins of the Underfoot. I am Datur, and I will help teach you the word and will of the Duke of Below, Brell Serilis. Here is our guild tunic. Let's get started, shall we?");
		#:: Give a 13514 - Dusty Tunic*
		quest::summonitem(13514);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set Factions
		quest::faction(44,100); 	#:: + Clerics of Underfoot
		quest::faction(169,100); 	#:: + Kazon Stormhammer
		quest::faction(219,75); 	#:: + Miners Guild 249
	}
	#:: Match a 12279 - Chalice Case
	if (plugin::takeItems(12279 => 1)) {
		if ($race eq "Dwarf" && $class eq "Paladin") {
			quest::say("The chalice is returned!! Praise be to Brell!! You have proven yourself to our church and have earned our respect. Let me welcome you into our brotherhood with the Cape of Underfoot. Wear it with pride as all of our finest paladins do.");
			#:: Give a 12281 - Cape of Underfoot
			quest::summonitem(12281);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(250);
			#:: Create a hash for storing cash - 2500 to 3500cp
			my %cash = plugin::RandomCash(2500,3500);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Set Factions
			quest::faction(44, 25);		#:: + Clerics of Underfoot
			quest::faction(169, 25);	#:: + Kazon Stormhammer
			quest::faction(219, 25);	#:: + Miners Guild 249
		} 
		else {
			quest::say("$name, you are no Dwarf! Leave this place at once!");
		}
	}
	#:: Return Unused Items
	plugin::return_items(\%itemcount);
}
