sub EVENT_ITEM {
	#:: Match a 13844 - Shiny Card (for Series C Black Boxes Quest)
	if (plugin::takeItems(13844 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Tick.. Pop.. Access granted.");
			#:: Give a 13213 - Blackbox XVIIC
			quest::summonitem(13213);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(255, 1); 		#:: + Gem Cutters
			quest::faction(245, 1); 		#:: + Eldritch Collective
			quest::faction(333, 1); 		#:: + King Ak'Anon
			quest::faction(238, -1); 		#:: - Dark Reflection
			quest::faction(287, -1); 		#:: - Clan Grikbar
			#:: Grant a small amount of experience
			quest::exp(100);
		}
		else {
			quest::say("Tick... You are not yet authorized to receive that information. Further service to the state is required. Have a nice day.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	#:: Spawn a Ak'Anon >> Clockwork_MM (55164) at the current coordinates
	quest::spawn2(55164, 0, 0, $x, $y, $z, $h+256);
}
