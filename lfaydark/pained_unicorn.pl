
sub EVENT_SAY {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		if ($text=~/hail/i) {
			quest::emote("snorts and stamps at the ground. An unusual angry glimmer enters the eyes of what should be one of Tunare's most peaceful creatures. Its coat seems slickened and filthy in places.");
		}
		elsif($text=~/corruption/i) {
			quest::emote("tosses its head back, drool falling from its mouth. 'The priests of the sick channel filth and sickness into the lands. Too late did we notice to stop them. You can though. Here, in the ocean, and the underwater city of the old. Go to those places and find the corruptions. Bring them to me.'");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20691 - Kedge Cave Crystals, a 20692 - Ocean of Tears Seavines and a 20693 - Green Heartwood Branch
		if (plugin::takeItems(20691 => 1, 20692 => 1, 20693 => 1)) {
			quest::say("Take my horn, symbol of Faydwer, now cleansed, to the gnome priest. It is anathema to him, to the corrupt forces in his soul, channeled into him by his dark god and will release the grip of corruption on the land. He is close, I can feel it.");
			#:: Give a 20694 - Gleaming Unicorn Horn
			quest::summonitem(20694);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(1000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}