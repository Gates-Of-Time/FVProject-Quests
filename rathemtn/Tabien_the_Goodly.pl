sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i) {
			quest::say("Oh thank Marr you are here, $name. I was beginning to think I would be abandoned in my time of need. I have a [task] for you to complete in the name of my patron Mithaniel Marr.");
		}
		elsif($text=~/task/i) {
			quest::emote("displays his shield that must once have been shining and regal but is now scoured in cuts, dents, and chipped paint. He says, 'This shield is known as Marr's Promise. It is a sacred relic that was actually used by one of Mithaniel's angels on the Plane of Valor. Its value to our church is immeasurable and I have been charged with the protection of it. However, a patriarch of the false god, Bertoxxulous, is after my shield and me. He must be stopped! Please, destroy him and bring me proof of his death.");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1676 - Woe and a 1677 - Envy
		if (plugin::takeItems(1676 => 1, 1677 => 1)) {
			quest::say("Ahh, thank Mithaniel you have put Glaron and his terrible reign to an end! You have done the world a great service by carrying out my instructions. Take this gem and give it to the one who sent you. He will reward you as befits such an accomplished mercenary such as yourself. Oh, and Marr be with you!");
			#:: Give a 1670 - Marble Pebble
			quest::summonitem(1670);
			#:: Ding!
			quest::ding();
			#:: Depop with spawn timer active
			quest::depop_withtimer();
		} 
	} 
	#:: Return unused items
	plugin::returnUnusedItems();
}