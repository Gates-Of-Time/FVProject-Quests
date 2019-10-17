sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("How dare you disturb me! You people need to just mind your pathetic lives and leave the rest to us. Leave me now!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18824 - Slip of Parchment
	if (plugin::takeItems(18824 => 1)) {
		quest::say("What is this? Hmmm. It seems Weleth has a problem with following orders. I will deal with him. Good work in bringing this to my attention. Our job here would be much more difficult without the help of loyal citizens like yourself. Take this as a token of Commander Kane's appreciation.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(230, 25);		#:: + Corrupt Qeynos Guards
		quest::faction(262, -3);		#:: - Guards of Qeynos
		quest::faction(273, 3);			#:: + Kane Bayle
		quest::faction(223, 2);			#:: + Circle of Unseen Hands
		quest::faction(221, 3);			#:: + Bloodsabers
		#:: Grant a large amount of experience
		quest::exp(32000);
		#:: Create a hash for storing cash - 5 to 25cp
		my %cash = plugin::RandomCash(5,25);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
