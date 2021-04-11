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
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of haunting/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of collection/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of detachment/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of allure/i) {
		quest::say("From the Estate of Unrest, bring a Charred Pearl - From Castle Mistmoore, a wand charred - From a merchant bring a stone of blood and a ruby - Words of Allure will be your reward."); 
	}
	elsif ($text=~/words of rupturing/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of dark paths/i) {
		quest::say("From the Estate of Unrest, bring an globe of darkness - From Guk, an Eye of Urd - From a merchant bring a Star Rose Quartz - Then Words of Dark Paths will to you be given."); 
	}
	elsif ($text=~/words of suffering/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of obligation/i) {
		quest::say("From Guk, bring an Eye of Jin - From spectres, bring a Globe of Fear - From a merchant bring a jade stone - Then Words of Obligation will to you be given."); 
	}
	elsif ($text=~/words of requisition/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of acquisition/i) {
		quest::say("From the Plane of Fear, bring Fetid Skin, Scare Straw and a Turmoil Wart - From a merchant bring a pearl - Then Words of Acquisition will to you be given."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 10083 - Charred Pearl, a 10035 - Ruby, a 14160 - Wand, and a 10019 - Bloodstone
	if (plugin::takeItems(10083 => 1, 10035 => 1, 14160 => 1, 10019 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		#:: Give a 11829 - Words of Allure
		quest::summonitem(11829);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1);		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 10520 - Sphere of Unrest, a 10523 - Eye of Urd, and a 10021 - Star Rose Quartz
	elsif (plugin::takeItems(10520 => 1, 10523 => 1, 10021 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11850 - Words of Dark Paths
		quest::summonitem(11850);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1);		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 13150 - Fetid Skin, a 13152 - Scare Straw, a 8331 - Turmoil Warts, and a 10024 - Pearl
	elsif (plugin::takeItems(13150 => 1, 13152 => 1, 8331 => 1, 10024 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11866 - Words of Acquisition (Beza)
		quest::summonitem(11866);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1);		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Match a 10521 - Globe of Fear, a 10525 - Eye of Jin, and a 10023 - Jade
	elsif (plugin::takeItems(10521 => 1, 10525 => 1, 10023 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11863 - Words of Obligation
		quest::summonitem(11863);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 10);		#:: + The Dead
		quest::faction(303, 1);			#:: + Queen Cristanos Thex
		quest::faction(278, -1);		#:: - King Naythox Thex
		quest::faction(275, -1);		#:: - Keepers of the Art
		quest::faction(245, -1);		#:: - Eldritch Collective
		quest::faction(1522, -20);		#:: - Primordial Malice
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(2, 30);
 	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
