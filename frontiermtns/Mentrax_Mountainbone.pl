sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("What be it you want! Go away before I eat you for dinner!");
		}
		if ($text=~/wenden sent me/i) {
			quest::say("Did he? Perhaps you would like to trade for some Rejesiam ore? Bring me the monocle from the patriarch that wanders around the Dreadlands. I've always wanted one of those."); # made up dialogue - will replace with correct dialogue once found from live servers
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20669 - Severely Damaged Dragon Head Hilt
		if (plugin::takeItems(20678 => 1)) {
			quest::say("Eh, you actually found one! Thank you, $name. Here is a block of ore for you. Just don't let the other giants know.");
			#:: Give a 20666 - Rejesiam Ore
			quest::summonitem(20666);
			#:: Ding!
			quest::ding();
			#:: Grant a medium amount of experience
			quest::exp(25000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}