sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::emote("ignores you.");
	}
	elsif($text=~/i challenge eejag/i) {
		if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
			#:: Spawn one and only one Lavastorm >> Eejag (27119), with no grid or guildwar, at the specified location
			quest::spawn2(27119, 0, 0, 126, 1789, -42);
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
}