sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What!!? You [Craknek] or you [pest]?");
	}
	if ($text=~/craknek/i) {
		quest::say("Good. Me not bash you. You help Horgus and Crakneks. Go smash lizards. Bring four tails. Greenbloods think they get all lizard tails. We take first. Taste good. You bring four tails. Me give you tings. Me gives armur. Now go!!");
	}
	if ($text=~/pest/i) {
		quest::say("Bah!! You go join Greenbloods. You weak.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13354 - Lizard Tail
	if (plugin::takeItems(13354 => 4)) {
		quest::say("You smash lizards good. Here is armur me promise.");
		#:: Give a random reward: 2136 - Large Patchwork Boots, 2135 - Large Patchwork Pants, 2132 - Large Patchwork Sleeves, 2128 - Large Patchwork Tunic, 2130 - Large Patchwork Cloak
		quest::summonitem(quest::ChooseRandom(2136,2135,2132,2128,2130));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
		#:: Set factions
		quest::faction(232, 10); 	#:: + Craknek Warriors
		quest::faction(228, 1); 		#:: + Clurg
		quest::faction(128 -1);		#:: - Green Blood Knights
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
