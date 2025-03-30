sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("Yes. My bark is blackened and cracked by sickness. If only I were the only one to be afflicted this way. Throughout the lands this is happening. Agents of some dark god are twisting the lands and their creatures.");
		}
		elsif ($text=~/What dark god/i) {
			quest::say("Not long ago, a human passed through this area. Around him swarmed some aura of sickness. Few could see it but with my age I could recognize a bringer of the plague. He seeded the area with pestilence before I could lift a branch to stop him. I believe it was he, and others in other lands, who has helped bring about this sickness.");
		}
		elsif ($text=~/What Sickness/i) {
			quest::say("I have kept in touch with friends of Tunare and Karana. It seems something is building amid the darkness. Some pact between gods to corrupt. All I know for sure is that you can stop the sickness in this land. I can feel it, vaguely. Somewhere, in the mountain and lake areas, and far north amid the cold mountains is where the land hurts most. Go, find the sources of corruption, and bring them back to me. Three should be their number.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20690 - Chunk of Tundra, a 20689 - Clean Lakewater, and a 20688 - Ancient Rock
		if (plugin::takeItems(20690 => 1, 20689 => 1, 20688 => 1)){
			quest::say("My heart cleansed of Corruption can interrupt the Flow of the corruption between the priest and his dark god, force it upon him quickly, I can sense him, he is in the Karana's somewhere.");
			#:: Give a 20695 - Warm Pulsing Treant Heart
			quest::summonitem(20695);
			#:: Ding!
			quest::ding();
			#:: Depop without spawn timer active
			quest::depop();
		}
		else {
			quest::emote("will not accept this item.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}