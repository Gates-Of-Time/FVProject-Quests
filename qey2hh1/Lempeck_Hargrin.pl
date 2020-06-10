sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Gree.. .. tings. How are you? Don't get too close to me. I have come down with something bad.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13954 - Prime Healer Potion
	if (plugin::takeItems(13954 => 1)) {
		quest::say("Thank you!! I felt the madness nearing my brain, but now I feel much better. Please take this as thanks - it is all I have to donate to Astaed Wemor. Be sure he gets it. I shall thank Rodcet Nife every day for sending help.");
		#:: Give a 13970 - Rusty Scythe
		quest::summonitem(13970);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 1);		#:: + Priests of Life
		quest::faction(280, 1);		#:: + Knights of Thunder
		quest::faction(262, 1);		#:: + Guards of Qeynos
		quest::faction(221, -1);	#:: - Bloodsabers
		quest::faction(219, 1);		#:: + Antonius Bayle
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("The Priests of Life will cleanse this city of evil ones like you soon enough. May Rodcet have mercy on all our souls.");
}
