sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("brushes pollen off of his tunic. 'Aachoo!! Oh!! Hello. Please look around. Unless you are a [druid looking for work].'");
	}
	elsif ($text=~/druid looking for work/i) {
		quest::say("Good. I need a stout adventurer to go to the wilds and find me a few items. I need some tump stumps - one Kromdul and one Kromdek type. I also need a mantrap root. Get me those three things and I will give you this handy shillelagh I found in the forest.");
	}
	elsif ($text=~/fertile crop/i) {
		#:: Match a 12953 - Dark Oak Shillelagh
		if (plugin::check_hasitem($client, 12953) {
			quest::say("Looking to get hold of my family druid spell, ehh? It doesn't come without a price. Lucky for you all I need is for you to run a small errand for me. Go fetch me a Sarnak farsight crystal, some Sarnak nightdust, some strathebone heal silk and some powder of Tsu. Do that and I will give you a copy of my family secret.");
		}
	}
}

sub EVENT_ITEM {  
	#:: Match a 18780 - Mantrap Root, a 12955 - Tump Stump (Kromdul), and a 12958 - Tump Stump (Kromdek)
	if (plugin::takeItems(12960 => 1, 12955 => 1, 12958 => 1)) {
		quest::emote("tosses the mantrap root out the window.. SPLASH!! 'I made a mistake. I didn't need that one. Here is the shillelagh I told you about. I found it in some burned out woods far from here. I cleaned it up and found it had a spark of mana so I had it enchanted with a few charges of my spell, [Fertile Crop]. Hope you like it.'");
		#:: Give a 12953 - Dark Oak Shillelagh
		quest::summonitem(12953);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);			#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);			#:: + Emerald Warriors
		quest::faction(312, 3);			#:: + Storm Guard
		quest::faction(441, -1);		#:: - Legion of Cabilis
		quest::Faction(313, -1);		#:: - Pirates Of Gunthak
		#:: Grant a moderate amount of experience
		quest::exp(2500);
	}
	#:: Match a 18780 - Mantrap Root
	elsif (plugin::takeItems(12960 => 1)) {	
		quest::say("Hey!! Trying to pull a fast one?!! I said I wanted tump stumps of Kromdek and Kromdul type and a mantrap root!!");
		#:: Give a 18780 - Mantrap Root
		quest::summonitem(18780);
	}
	#:: Match a 12955 - Tump Stump (Kromdul)
	elsif (plugin::takeItems(12955 => 1)) {	
		quest::say("Hey!! Trying to pull a fast one?!! I said I wanted tump stumps of Kromdek and Kromdul type and a mantrap root!!");
		#:: Give a 12955 - Tump Stump (Kromdul)
		quest::summonitem(12955);
	}
	#:: Match a 12958 - Tump Stump (Kromdek)
	elsif (plugin::takeItems(12958 => 1)) {	
		quest::say("Hey!! Trying to pull a fast one?!! I said I wanted tump stumps of Kromdek and Kromdul type and a mantrap root!!");
		#:: Give a 12958 - Tump Stump (Kromdek)
		quest::summonitem(12958);
	}
	#:: Match a 11579 - Farsight Crystal, a 12753  - Pouch of Dust, a 12957 - Strathbone Silk, and a 12959 - Tsu Shaman Powder
	elsif (plugin::takeItems(11579 => 1, 12753 => 1, 12957 => 1, 12959 => 1)) {
		quest::say("Great work! I wish I had the coin to hire you on permanently. Maybe I will, when I find the lost trade city of Torsis. Here is the spell I copied for you. Careful, the ink is still drying.");
		#:: Give a 12954 - Fertile Crop
		quest::summonitem(12954);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);			#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);			#:: + Emerald Warriors
		quest::faction(312, 3);			#:: + Storm Guard
		quest::faction(441, -1);		#:: - Legion of Cabilis
		quest::Faction(313, -1);		#:: - Pirates Of Gunthak
		#:: Grant a moderate amount of experience
		quest::exp(2500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
