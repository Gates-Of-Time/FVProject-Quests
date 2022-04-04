sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("brushes pollen off of his tunic. 'Aachoo!! Oh!! Hello. Please look around. Unless you are a [druid looking for work].'");
  }
  if ($text=~/druid looking for work/i) {
    quest::say("Good. I need a stout adventurer to go to the wilds and find me a few items. I need some tump stumps - one Kromdul and one Kromdek type. I also need a mantrap root. Get me those three things and I will give you this handy shillelagh I found in the forest.");
  }
  if ($text=~/fertile crop/i) {
    quest::say("Looking to get hold of my family druid spell, ehh? It doesn't come without a price. Lucky for you all I need is for you to run a small errand for me. Go fetch me a Sarnak farsight crystal, some Sarnak nightdust, some strathebone heal silk and some powder of Tsu. Do that and I will give you a copy of my family secret.");
  }
}

sub EVENT_ITEM {  
	#:: Match a 18780 - Mantrap Root, 12955 - Tump Stump (Kromdul) and 12958 - Tump Stump (Kromdek)
	if (plugin::takeItems(12960 => 1, 12955 => 1, 12958 => 1)) {
		quest::emote("tosses the mantrap root out the window.. SPLASH!!");
    quest::say("I made a mistake. I didn't need that one. Here is the shillelagh I told you about. I found it in some burned out woods far from here. I cleaned it up and found it had a spark of mana so I had it enchanted with a few charges of my spell, [Fertile Crop]. Hope you like it.");
		#:: Give a 12953 - Dark Oak Shillelagh
		quest::summonitem(12953);
		#:: Ding!
		quest::ding();
		#:: Set factions
    quest::faction(418,10);       #:: + inhabitants of firiona
    quest::faction(92,10);        #:: + emerald warriors
    quest::faction(314,10);       #:: + storm guard
    quest::faction(193,-30);      #:: - legion of cabilis
    quest::faction(250,-30);      #:: - pirates of gunthak
		#:: Grant a moderate amount of experience
		quest::exp(25000);
	}
	#:: Match four 11579 - Farsight Crystal, 12753  - Pouch of Dust, 12957 - Strathbone Silk and 12959 - Tsu Shaman Powder
	elsif (plugin::takeItems(11579 => 1, 12753 => 1, 12957 => 1, 12959 => 1)) {
		quest::say("Praise Tunare! I knew you would be victorious. I reward you with this spell, and pray that it will help you in your fight against the unholy forces of Innoruk. When you are ready you will make a fine [Initiate of Tunare].");
		#:: Give a 12954 - Fertile Crop
		quest::summonitem(12954);
		#:: Ding!
		quest::ding();
		#:: Set factions
    quest::faction(418,10);       #:: + inhabitants of firiona
    quest::faction(92,10);        #:: + emerald warriors
    quest::faction(314,10);       #:: + storm guard
    quest::faction(193,-30);      #:: - legion of cabilis
    quest::faction(250,-30);      #:: - pirates of gunthak
		#:: Grant a moderate amount of experience
		quest::exp(25000);
	}
  
	#:: Return unused items
	plugin::returnUnusedItems();
}