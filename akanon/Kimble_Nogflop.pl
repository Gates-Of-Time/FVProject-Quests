sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings! I am the keeper of this zoo. I advise you to stay on the upper tiers to observe the animals.");
	}
	elsif ($text=~/regurgitonic/i) {
		quest::say("I formulate the Regurgitonic myself. My animals kept eating the occasional spectator here and there. Femurs and ribs kept getting stuck inside, not to mention a few platinum pieces. Sometimes my batch would come out wrong and the animals would go berserk!! I hope I got the formula right this time.");
	}
}

sub EVENT_ITEM {
	#:: Turn in check for 13945 - Flask of Nitrates
	if (plugin::takeItems(13945 => 1)) {
		quest::say("The flask of nitrates I sent for!! As was the deal, here is my [" . quest::saylink("Regurgitonic") . "]. Give it to whoever may need it and they will surely cough up whatever may be inside them with no harm to them whatsoever.");
		#:: Give a 12140 - The Regurgitonic
		quest::summonitem(12140);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(255, 10); 		#:: + Gem Cutters
		quest::faction(288, 10); 		#:: + Merchants of Ak'Anon
		quest::faction(333, 10); 		#:: + King Ak'Anon
		quest::faction(238, -30); 		#:: - Dark Reflection
		quest::faction(1604, -30); 		#:: - Clan Grikbar
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
