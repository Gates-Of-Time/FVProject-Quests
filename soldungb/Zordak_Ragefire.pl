sub EVENT_SPAWN {
	if (quest::is_current_expansion_the_ruins_of_kunark()) {
		#:: Match a Nagafen's Lair >> Lord_Nagafen (32040) on the entity list
		if ($entity_list->GetMobByNpcTypeID(32040)) { # if Lord Nagafen is up, Zordak will despawn, https://everquest.allakhazam.com/db/npc.html?id=5153&p=6#m99097066831023
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
}

sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::emote("Zordak Ragefire stares at (your name) with unblinking eyes. A wide grin crosses Zordak's face and flames flicker in the depths of his eyes. 'Welcome to the new fortress of the Plasmatic Priesthood! It's a shame about Lord Nagafen's untimely death, really it is! Such a powerful and noble creature should not perish at the hands of mortals.'");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28054 - Shimmering Pearl
		if (plugin::takeItems(28054=>1)) {
			quest::emote("is engulfed by a shimmering blue light! An inhuman expression of rage crosses his face and flames leap in his eyes as he begins to vanish in the shimmering light! 'The Triumvirate may have succeeded in sending me back to my cursed homeland for the time being! I swear to you I shall return from Skyfire and destroy all of the Triumvirate Missionaries in flames!'");
			#:: Depop with spawn timer active
			quest::depop_withtimer();
			if (quest::is_current_expansion_the_ruins_of_kunark()) {
				#:: Spawn one and only one Nagafen's Lair >> #Zordak_Ragefire (32003), without grid or guild war, at the current location
				$zordakId = quest::unique_spawn(32003, 0, 0, $x, $y, $z);
				$mob1 = $entity_list->GetMobID($zordakId);
				$mob1attack = $mob1->CastToNPC();
				$mob1attack->AddToHateList($client, 1);
			} else {
				#:: Give a 17175 - Zordak's Box of Bindings
				quest::summonitem(17175);
				#:: Give a 28059 - Swirling Pearl
				quest::summonitem(28059);
				#:: Ding!
				quest::ding();
			}
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
