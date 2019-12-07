sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Pleased to meet you. $Name. Have you seen how clear the water is underneath the Academy? All sorts of life could flourish there. What a shame there are no [Marr Minnows] there.");
	}
	elsif($text=~/marr minnows/i) {
		quest::say("The Marr Minnow swims in the pond near the Temple of Marr. I wish I had one. Not a dead one. A live one. I need someone to [get the minnow].");
	}
	elsif($text=~/get the minnow/i) {
		quest::say("Please try. Here you are. Take this jar. Offer the jar to the minnows. Maybe they will swim into it.");
		#:: Give item 13861 - Jar of Liquid
		quest::summonitem(13861);
	}
}

sub EVENT_ITEM {
	#:: Match a 13862 - Fish in a Jar
	if (plugin::takeItems(13862 => 1 )) {
		#:: Ding!
		quest::ding();
		quest::say("Oh! A beautiful Marr Minnow. This shall look grand in my aquarium! How lucky that you are a friend to the Academy of Arcane Science. Take your reward.");
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Give random item: 13005 - Iron Ration, 13006 - Water Flask
		quest::summonitem(quest::ChooseRandom(13005, 13006));
		#:: Set Faction
		quest::faction(220,5); 	#:: + Arcane Scientists
		quest::faction(281,1); 	#:: + Knights of Truth
		quest::faction(296,-1); #:: - Opal Dark Briar
		quest::faction(330,-1); #:: - The Freeport Militia
		#:: Create a hash for storing cash - 4500 to 4600cp
		my %cash = plugin::RandomCash(4500,4600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
