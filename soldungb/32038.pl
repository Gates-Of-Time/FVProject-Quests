#:: This is the Non-KOS "merchant" version of Zordak Ragefire that spawns first

#:: Make sure that Zordak Ragefire the vendor never spawns when Lord Nagafen is up
sub EVENT_SPAWN {
	#:: Send a signal '2' to Nagafen's Lair >> Lord Nagafen (32040) if he's up; if signal '1' received, depop
	quest::signalwith(32040, 2, 0);

    #:: Match a Nagafen's Lair >> Lord_Nagafen (32040) on the entity list
    if ($entity_list->IsMobSpawnedByNpcTypeID(32040)) {
		quest::stoptimer(1);
		#:: Despawn and start respawn timer - maybe Naggy will be down next time
        quest::depop_withtimer();
    }
}

sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::emote("stares at you with unblinking eyes. A wide grin crosses Zordak's face and flames flicker in the depths of his eyes,");
			quest::say("'Welcome to the new fortress of the Plasmatic Priesthood! It's a shame about Lord Nagafen's untimely death, really it is! Such a powerful and noble creature should not perish at the hands of mortals.'");
		}
	}
}

sub EVENT_ITEM
{
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		# Match a 28054 : Shimmering Pearl
		if (plugin::takeItems(28054 => 1)) {
			quest::emote("laughs maniacally as he crushes the pearl in his hands with inhuman strength. 'The Triumvirate missionaries think their petty magic can affect me!! I will send your heads to Omat as a symbol of what is to come for all of his missionaries!!");
			#:: Despawn Zordak Ragefire ("merchant" version)
			quest::depop_withtimer();

			#:: Spawn one and only one Nagafen's Lair >> 32000 - #Zordak_Ragefire (KOS non-merchant version) without grid or guild war, at the current coordinates
			quest::unique_spawn(32000, 0 , 0, $x, $y, $z, $h);

			# Post-Revamp Quest text when being handed Shimmering Pearl indicating he was sent to Skyfire
            # quest::emote("is engulfed by a shimmering light! An inhuman expression of rage crosses his face and flames leap in his eyes as he begins to vanish in the shimmering light! 'The Triumvirate may have succeeded in sending me back to my cursed homeland for the time being! I swear to you I shall return from Skyfire and destroy all of the Triumvirate Missionaries in flames!'");
			# 17175 Zordak's Box of Bindings
			# quest::summonitem(17175);
			# 28059 Swirling Pearl
			# quest::summonitem(28059);
			# quest::ding();
			# depop Zordak and start respawn timer
			# quest::depop_withtimer();
		} 
	}

   #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from Nagafen's Lair >> Lord_Nagafen (32040)
	if ($signal == 1) {
		quest::depop_withtimer();
	}
}