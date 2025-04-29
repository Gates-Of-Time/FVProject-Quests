sub EVENT_SAY {
	if($text=~/hail/i){
		quest::emote("ignores you.");
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1684 - Charred Scale
		if((plugin::takeItems(1684 => 1)) && ($ulevel >= 46) && ($class eq "Monk")) {
			# Monk Epic 1.0
			quest::say("Hahaha! That dolt Eejag fell to the likes of you? Im not surprised. So, I guess this means you are here to challenge me. Normally, I wouldnt waste my time, but since you have defeated my younger brother, I suppose Im obligated.");
			#:: Spawn one and only one The Plane of Sky >> Gwan (71069), with no grid or guildwar, at the current location
			quest::spawn2(71069, 0, 0, $x, $y, -8, $h);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	else {
		quest::say("I have no need for this, $name.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}