sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome to our camp.  We are paladins gathered from many lands. We have been called to this land by our deities.  Ours is a crusade of righteousness.  Have you happened upon us by chance or do you [seek the sacred molds]?");
	}
	elsif ($text=~/helm of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("To receive the mold of the Helm of Ro you must first demonstrate your strength.  Go to the plains of thunder.  There you shall hunt down the most vile creatures I have ever encountered.  Seek the undead cyclopes.  I have spied them in the most dangerous portions of my realm. Fetch me two of their skulls.");
		}
	}
	elsif ($text=~/seek the sacred molds/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Many of us carry the sacred molds of the holy paladin armor.  We will release it only to those who have proven themselves to each of our deities.  If you seek it, speak up!! Tell us which part you seek.  I carry the secret of the [Helm of Ro].  The others carry those of vambraces, breastplates, bracers, gauntlets, greaves and boots of Ro."); 
		}
	}
	elsif ($text=~/lord searfire/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Lord Searfire is a great forge master.  He was called forth to the land of fire lakes.  It is said that he now toils in the name of Solusek Ro within a hidden temple of that land.  He and he alone knows how to obtain [ronium], a needed component for forging the sacred Armor of Ro.");
		}
	}
	elsif ($text=~/ronium/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("It is an alloy created from two rare metals.  Only [Lord Searfire] knows the formula.");
		}
	}
}

sub EVENT_ITEM { 
	#:: Match two 12308 - Cyclops skull
	if (plugin::takeItems(12308 => 2)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You have proven yourself to Karana.  I grant you the mold of the Ro Helm.  May the winds of Karana blow in your favor.  Now you must seek out [Lord Searfire] and  ask him for [ronium] to complete the second and only other component needed to be fashioned by a master blacksmith.");
			#:: Give a 12298 - Mold of Ro Helm
			quest::summonitem(12298);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(280, 20);	#:: + Knights of Thunder
			quest::faction(221, -20);	#:: - Bloodsabers
			quest::faction(341, 15);	#:: + Priests of Life
			quest::faction(262, 15);	#:: + Guards of Qeynos
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			#:: Give two 12308 - Cyclops skull
			quest::summonitem(12308);
			quest::summonitem(12308);
		}
	}
	#:: Match one 12308 - Cyclops skull
	elsif (plugin::takeItems(12308 => 1)) {
		quest::say("I called for two cyclops skulls.");
		#:: Give a 12308 - Cyclops skull
		quest::summonitem(12308);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
