sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Mind yourself in these parts! There are many dangers. Stay away from the water, if you know whats good for you.");
	}
	elsif ($text=~/sign the restraining order/i) {
		quest::emote("looks very upset at your mention of the order. 'I cannot believe I have been banned from what little enjoyment can be found in Cabilis. Oh, well, I cannot argue with a legion order. Hand me the order so that I may sign it.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18240 - Legion Order
	if (plugin::takeItems(18240 => 1)) {
		quest::emote("grabs the order from your hand and mumbles something unpleasant and vaguely threatening. He then hands the signed order back to you.");
		#:: Give a 18241 - Legion Order
		quest::summonitem(18241);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Fear the blades of the Iksar!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_SLAY {
	quest::say("Another victory for the Legion of Cabilis.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You have not won. Consider yourself wanted by the Legion of Cabilis.");
}
