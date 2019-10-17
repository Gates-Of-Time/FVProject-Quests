sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Eh?... <yawn>... Ah good evening to you, too, $name. I'd be careful outside the city gates tonight if I were you... I've heard rumors of evil people and undead wandering the hills recently.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18020 - Jusean's Report Request
	if (plugin::takeItems(18020 => 1)) {
		quest::say("Ah, hey $name... <yawns>... Here ya go... <yawns>... Please excuse my yawning, but working nights has really drained the energy out of me. Though, it does... <yawn>... get interesting around here sometimes, which helps to keep me awake. Anyway, be safe, $name, and I'll see you later.");
		#:: Give a 18025 - Quinon's Report
		quest::summonitem(18025);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(284, 10);		#:: + League of Antonican Bards
		quest::faction(281, 1);			#:: + Knights of Truth
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(304, -1);		#:: - Ring of Scale
		quest::faction(285, -1);		#:: - Mayong Mistmoore -1 
		#:: Grant a small amount of experience
		quest::exp(200);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
