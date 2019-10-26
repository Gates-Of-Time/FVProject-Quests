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
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
