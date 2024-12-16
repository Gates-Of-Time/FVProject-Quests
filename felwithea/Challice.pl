sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/Hail/i){
			quest::say("You!  Remove yourself from my presence!  Do you not know to whom you speak?  My husband is a very powerful noble and if you do not do as I say. he will have your head!"); 
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 14334 - Arantir's Ring
		if(plugin::takeItems(14334 => 1)){
			quest::say("Oh yes? Arantir? What a fool he was! the man gave me everything, but for all his intelligence, he could never understand why I was truly with him. It was for his power; he could do anything. But when he mysteriously lost it, he became just another toy. I never loved him. Return this ring to him. He will understand that I have no desire to see him again.");
			#:: Give a 14335 - Arantir's Ring
			quest::summonitem(14335);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(342, 30); 	#:: + Truespirit
			#:: Grant a large amount of experience
			quest::exp(100000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}