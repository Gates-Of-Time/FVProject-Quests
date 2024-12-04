sub EVENT_SAY {
  	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::emote("sighs as she looks over her lute.");
			quest::say("My lute was mangled by those damnable gnolls. I have no idea how I'm going to get a new set of strings for it. They were so rare.");
		}
		if ($text=~/rare/i) {
			quest::say("I only use the finest lute strings on my lute. My uncle got them for me from across the world. His name was Zendrik the Wurmslayer. As his name implies, he killed many wurms and drakes. The strings for my lute were all made from the guts of the wurms and drakes he slew.");
		}
		if ($text=~/wurms and drakes/i) {
			quest::say("The strings were from a chromodrac, a red wurm, and a huge onyx drake. It always sounded so wonderful.");
			quest::emote("sighs, looking off into the horizon.");
			quest::emote("shakes her lute angrily.");
			quest::say("I'll kill all of you dirty gnolls!");
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20527 - Chromodrac Gut, a 20528 - Red Wurm Gut and a 20529 - Onyx Drake Gut
		if (plugin::takeItems(20527 => 1, 20528 => 1, 20529 => 1)) { 
			quest::emote("snatches the gut strings from your hand and immediately begins to string her lute.");
			quest::say("This is wonderful, I will be able to play my lute again soon! Take this old sheet of music I found - I don't think I will have much use for it. My new desire is to bash gnoll heads in with my lute. Safe travels to you, $name.");
			#:: Give a 20377 - Maestro's Symphony Page 25
			quest::summonitem(20377);
			#:: Ding!
			quest::ding();
		}
		else {
			quest::say("I do not want this.");
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}