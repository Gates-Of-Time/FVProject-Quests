sub EVENT_ITEM {
	#:: Match a 13844 - Shiny Card (for Series C Black Boxes Quest)
	if (plugin::takeItems(13844 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("Tick.. Pop.. Access granted.");
			#:: Give a 13214 - Blackbox XXVIIC
			quest::summonitem(13214);
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

sub EVENT_AGGRO {
	quest::say("Click...  Tick...  City violation. Code 5150.  This unit is authorized to execute punishment.  Please stand still.  Thank you.");
}

sub EVENT_NPC_SLAY {
	quest::say("Click...  Whirr...  Threat has been suppressed.  This unit returning to normal operations.");
}

sub EVENT_SLAY {
	quest::say("Click...  Whirr...  Threat has been suppressed.  This unit returning to normal operations.");
}
