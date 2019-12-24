sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Have you come to buy a scroll from me?");
	}
}

sub EVENT_ITEM {
	#:: Match 50 gold pieces
	if (plugin::takeCoin(0, 0, 50, 0)) {
		quest::say("Ahhh - gold. Here is the rune you desire.");
		#:: Give a 10532 - Rune of Fortune
		quest::summonitem(10532);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(344, 1);		#:: + Beta Neutral
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 10791 - Glowing Coin of Tash
	elsif (plugin::takeItems(10791 => 1)) {
		quest::say("Ah - the Coin of Tash - and already enchanted by..? Tarn? Very good! I have enchanted it further - you must now take the coin to Raine Beteria in the Library of Erudin to get the final enchantment.");
		#:: Give a 10792 - Gleaming Coin of Tash
		quest::summonitem(10792);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(344, 1);		#:: + Beta Neutral
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
