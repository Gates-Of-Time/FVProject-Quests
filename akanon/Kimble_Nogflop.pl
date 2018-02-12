# Ak'Anon (akanon) >> Kimble_Nogflop (55137)
# The Regurgitonic Quest

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings! I am the keeper of this zoo. I advise you to stay on the upper tiers to observe the animals.");
	}
	if ($text=~/regurgitonic/i) {
		quest::say("I formulate the Regurgitonic myself. My animals kept eating the occasional spectator here and there. Femurs and ribs kept getting stuck inside, not to mention a few platinum pieces. Sometimes my batch would come out wrong and the animals would go berserk!! I hope I got the formula right this time.");
	}
}

sub EVENT_ITEM {
	#:: Turn in check for 13945 - Flask of Nitrates
	if (plugin::check_handin(\%itemcount, 13945 => 1)) {
		quest::say("The flask of nitrates I sent for!! As was the deal, here is my [" . quest::saylink("Regurgitonic") . "]. Give it to whoever may need it and they will surely cough up whatever may be inside them with no harm to them whatsoever.");
		#:: Summon reward 12140 - The Regurgitonic
		quest::summonitem(12140);
		#:: Give a little xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,10); 	#:: + Gem Cutters
		quest::faction(210,10); 	#:: + Merchants of Ak'Anon
		quest::faction(176,10); 	#:: + King Ak'Anon
		quest::faction(71,-30); 	#:: - Dark Reflection
		quest::faction(39,-30); 	#:: - Clan Grikbar
	}
	plugin::return_items(\%itemcount);
}
