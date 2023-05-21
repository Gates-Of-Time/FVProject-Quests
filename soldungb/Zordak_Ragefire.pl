# NPC:32038 Zordak Ragefire, Cleric Epic 1.0 Quest NPC, Cultural Tradeskills Vendor Spell: Imbue Fire Opal, Oil of Fennin Ro

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
		# 28054 : Shimmering Pearl
		if (plugin::takeItems(28054 => 1)) {
			quest::emote("laughs maniacally as he crushes the pearl in his hands with inhuman strength. 'The Triumvirate missionaries think their petty magic can affect me!! I will send your heads to Omat as a symbol of what is to come for all of his missionaries!!");
			quest::depop_withtimer();

			# Post-Revamp Quest text when being handed Shimmering Pearl indicating he was sent to Skyfire
#			quest::emote("is engulfed by a shimmering light! An inhuman expression of rage crosses his face and flames leap in his eyes as he begins to vanish in the shimmering light! 'The Triumvirate may have succeeded in sending me back to my cursed homeland for the time being! I swear to you I shall return from Skyfire and destroy all of the Triumvirate Missionaries in flames!'");
			# 17175 Zordak's Box of Bindings
#			quest::summonitem(17175);
			# 28059 Swirling Pearl
#			quest::summonitem(28059);
#			quest::ding();
			# depop Zordak and start respawn timer
#			quest::depop_withtimer();
		} 
	}

   #:: Return unused items
  plugin::returnUnusedItems();
}

# END of FILE, Zone: soldungb ID:32038 -- Zordak_Ragefire
