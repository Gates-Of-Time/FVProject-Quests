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
		quest::say("From the Estate of Unrest, bring dull bone chips - From Castle Mistmoore, a dagger charred - From a merchant bring a stone of blood - Words of Detachment will be your reward."); 
	}
	elsif ($text=~/words of allure/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of rupturing/i) {
		quest::say("From the Estate of Unrest, bring a festering cloak - From Castle Mistmoore, ebon wands - From a merchant bring a jasper stone - Then Words of Rupturing will to you be given."); 
	}
	elsif ($text=~/words of dark paths/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of suffering/i) {
		quest::say("From Befallen, bring Iced Bone Chips - From spectres, bring a Globe of Fear - From a merchant bring a Star Rose Quartz - Then Words of Suffering will to you be given."); 
	}
	elsif ($text=~/words of obligation/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
	elsif ($text=~/words of requisition/i) {
		quest::say("From the Plane of Fear, bring an Eye of Fright and a Stone of the Wraith - From a merchant bring a pearl - Then Words of Requisition will to you be given."); 
	}
	elsif ($text=~/words of acquisition/i) {
		quest::say("The answer to that question is held by another - Ask again of my sister..."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 7036 - Charred Dagger, a 10019 - Bloodstone, and a 10517 - Dull Bone Chips
	if (plugin::takeItems(7036 => 1, 10019 => 1, 10517 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
		#:: Give a 11835 - Words of Detachment
		quest::summonitem(11835);
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
	#:: Match a 1343 - Festering Cloak, a 10020 - Jasper, a two 10515 - Ebon Wand
	elsif (plugin::takeItems(1343 => 1, 10020 => 1, 10515 => 2)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11837 - Words of Rupturing
		quest::summonitem(11837);
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
	#:: Match a 13151 - Eye of Fright, a 10298 - Wraithstone, and a 10024 - Pearl
	elsif (plugin::takeItems(13151 => 1, 10298 => 1, 10024 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11865 - Words of Requisition
		quest::summonitem(11865);
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
	#:: Match a 10521 - Globe of Fear, a 10021 - Star Rose Quartz, and a 10519 - Iced Bone Chips
	elsif (plugin::takeItems(10521 => 1, 10021 => 1, 10519 => 1)) {
		quest::say("You have quested well - With spell and sword - Accept our thanks - And this reward.");
   		#:: Give a 11851 - Words of the Suffering
		quest::summonitem(11851);
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
