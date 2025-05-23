sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Took ya long enough! Ye'd think ya had an Orc head on them shoulders there. I'm owin' ya for yer help though. Else I'd have been on that darn hammer for ages. Ye said ya had an ancient blade or somethin ta be smithin. If so lemme see it.");
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 14331 - Ro's Breath
		if(plugin::takeItems(20477 => 1)) {
			quest::emote("admires the blade and then starts to bang the edge with a hammer. 'Hah, that was a good blade, no doubt. Ain't seen one I couldn't make better though. I'm knowin' yer cause and all I know is ye should take that ancient blade ta yer friend in the woods, he'll know what to do now. With that I'm gonna be takin muh leave. Debt paid and all. If'n yer wantin' another blade, which ye do, ye got enough ore left that Kinlo can do it for ye'");
			#:: Give a 20481 - Refined Ancient Sword
			quest::summonitem(20481);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}