sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("We three are the [Sisters Dark] - [Necromancy] is our Art - Bonded dead, they serve our will - No beat of heart, yet faithful still.");
	}
	elsif ($text=~/sisters dark/i) {
		quest::say("We three are the Sisters Dark - Keepers of the shadowed Dread - [Lore of Death]. we research now - Join with us and serve [the Dead].");
	}
	elsif ($text=~/necromancy/i) {
		quest::say("Necromancy - Art of the Dead - Binding bones to serve your will - We research now the [Lore of Death] - Ancient spells with power still."); 
	}
	elsif ($text=~/lore of death/i) {
		quest::say("The Lore of Death is shadow bound - Its [words] are [hid]. yet shall be found - Through our research into the dark - Old hexes found and parchment marked.");
	}
	elsif ($text=~/the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak. They were formed by Queen Cristanos herself. Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate. I have heard they take orders only from the queen.");
	}
	elsif ($text=~/words hid/i) {
		quest::say("The Words are hid in tomes of old - Their yielded lore worth more than gold - Though we search both 'fore and 'hind - [Components] we can not yet find."); 
	}
	elsif ($text=~/components/i) {
		quest::say("We need components for research - These are things that you could find - In return for [tasks] that you perform - Words of [reward] we have in mind."); 
	}
	elsif ($text=~/tasks|reward/i) {
		quest::say("Bring us components for our research - We give [Word]s by tasks performed - [Possession], [Detachment], [Allure], [Haunting], [Rupturing], [Dark Paths], [Suffering], [Collection], [Obligation], [Requisition] and [Acquisition]."); 
	}
	elsif ($text=~/words of possession/i) {
		quest::say("From the Estate of Unrest, bring barbed bone chips - From Castle Mistmoore, a dagger charred - From a merchant bring a stone of blood - Words of Possession will be your reward."); 
	}
	elsif ($text=~/words of haunting/i) {
		quest::say("From the Estate of Unrest, bring dark bone chips - From Castle Mistmoore, a dagger ebon - From a merchant bring a jasper stone - Then Words of Haunting will to you be given."); 
	}
	elsif ($text=~/words of collection/i) {
		quest::say("Two Words of Collection I possess - To obtain Beza to me you must bring - a globe of darkness, an Eye of Kor and an amber gem. To obtain Caza to me you must bring - an Eye of Guk, a globe of fear, and jade."); 
	}
	elsif ($text=~/words of detachment/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of allure/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of rupturing/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of dark paths/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of suffering/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of obligation/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of requisition/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of acquisition/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 7036 - Charred Dagger, a 10019 - Bloodstone, and two 10516 - Barbed Bone Chips
	if (plugin::takeItems(7036 => 1, 10019 => 1, 10516 => 2)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		#:: Give a 11815 - Words of Possession
		quest::summonitem(11815);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1):		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 7037 - Ebon Dagger, a 10020 - Jasper, and two 10518 - Dark Bone Chips
	elsif (plugin::takeItems(7037 => 1, 10020 => 1, 10518 => 2)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11836 - Words of Haunting
		quest::summonitem(11836);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1):		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 10520 - Sphere of Unrest, 10524 - Eye of Kor, and a 10022 - Amber
	elsif (plugin::takeItems(10520 => 1, 10524 => 1, 10022 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11858 - Words of Collection (Beza)
		quest::summonitem(11858);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1):		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 10521 - Globe of Fear, a 10526 - Eye of Guk, and a 10023 - Jade
	elsif (plugin::takeItems(10521 => 1, 10526 => 1, 10023 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11864 - Words of Collection (Caza)
		quest::summonitem(11864);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1):		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
