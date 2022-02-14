sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good evening, citizen! It is a fine night for a stroll, but not in the woods. No, no! That would be far too dangerous!");
	}
	elsif ($text=~/sign the restraining order/i) {
		quest::say("I knew this time would come. I will slay you for bringing this to me... No... I'd best not make the officers angry. <sigh> Hand me the order and I shall sign it.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18248 - Legion Order
	if (plugin::takeItems(18248 => 1)) {
		quest::emote("signs the note and hands back to you. 'Be off now. Before I do choose to slay the messenger.'");
		#:: Give a 18249 - Legion Order
		quest::summonitem(18249);
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
