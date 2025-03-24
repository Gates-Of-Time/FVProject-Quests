sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Let us dispense with pleasantries, $name. I am Jinalis, as you know. I imagine you want to control the Elements. The Element of Water, which I possess, is the most powerful of the Elements. With it you can control the water which falls from the Air, erodes the Earth, and extinguishes Fire. It is a pity you do not focus on the Prime Element, but if you wish to follow that fool Magi'kot to your doom, I will not stop you. Bring me the Staff of Elemental Mastery: Water held by the last of the Kedge, the Tears of Erollisi held by a dirty and rotten officer across the Blessed Deep, and finally, the Rain of Karana, found on a mighty Giant in, where else, the Karanas.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 11569 - Staff of Elemental Mastery: Water, a 28040 - Tears of Erollisi and a 28041 - Rain of Karana
		if (plugin::takeItems(11569 => 1, 28040 => 1, 28041 => 1)) {
			quest::say("You have the control needed in order to manipulate the water which surrounds us. Take this Element and guard it well, you will need it in the times to come.");
			#:: Give a 28006 - Element of Earth
			quest::SummonItem(28006);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(3000);
		}
		else {
			quest::say("I do not need these.");  
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
