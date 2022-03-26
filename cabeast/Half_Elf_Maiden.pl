sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want? You do not look like the type of person the Baron usually sends to me.");
	}
}

sub EVENT_ITEM {
	#:: Match a 54026 - Klok's Seal
	if (plugin::takeItems(54026 => 1)) {
		quest::say("Oh! thank you! I did not expect to hear of my family ever again. This seal should grant me protection out of the city if I am careful. Please take this note to my father and let him know I am safe!");
		#:: Give a 18863 - Sealed Letter
		quest::summonitem(18863);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
