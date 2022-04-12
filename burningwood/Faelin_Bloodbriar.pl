sub EVENT_SAY {
  if ($text=~/hail/i) {		
		if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
	    quest::say("Didn't think I was gone for good, did you? We're that much closer to finishing this trial of our strength, thanks to you.");
		}
  }
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20481 - Refined Ancient Sword
		if (plugin::takeItems(20481 =>1)) {
			quest::emote("smiles at you, then closes her eyes as she sets the gem 'Nature's Balance' into the crossguard and begins to channel her spirit into the sword. The ground rumbles loudly as she casts. She collapses in exhaustion after a short time. 'Take the blade, and perhaps you can finish this. You must strike at the heart of Innoruuk's lair. Bring a shattered gem and the mithril blade to Xanuusus. Only by weakening Innoruuk's grip over his realm can the balance of the land once again be restored. If we do not meet again, $name, remember you always have my eternal thanks.'");
			#:: Give a 20487 - Swiftwind
			quest::summonitem(20487);
			#:: Ding!
			quest::ding();
				#:: Grant a huge amount of experience
				quest::exp(1000000);
		}
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}