sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if($text=~/Hail/i){
			quest::say("Ah, I see you have found my study.  This is where I study and scribe the history of magic in Norrath.");
		}
		if($text=~/what history/i){
			quest::say("I have worked to chronicle everything from the beginnings of magic to what we consider the modern day of magic.  Solusek Ro has been very generous to those who wield magic in Norrath.  But throughout history there is one thing I have noticed - too much power corrupts the soul.  I have seen and documented that the strongest wizards and those closest to Solusek Ro become corrupted by their power.");
		}
		if($text=~/what wizards/i){
			quest::say("Unfortunately, I don't have time to speak of such things right now.  But I could use your help since you are here.  I have here an envelope that I need delivered to one Camin.  You can find him near the wizard tower in the city of Erudin.  He is a sage like myself whose knowledge rivals my own.  Do you [agree] to undertake my task?");
		}
		if($text=~/i agree/i){
			quest::say("Here you are, then.  Good luck on your journey.");
			#:: Give a 18088 - Note to Camin
			quest::summonitem("18088");
		}
	}
}
sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 14340 - Magically Sealed Bag
		if(plugin::takeItems(14340 => 1)){
			quest::say("You actually did it! I never would have thought that anyone could have truly followed this path. This is a tribute to your intelligence and patience. Here, take this staff and know that you have made Solusek Ro and all the wizards of the world proud this day.");
			#:: Give a 14341 - Staff of the Four
			quest::summonitem(14341);			
			#:: Ding!
			quest::ding();
		} else {
			quest::say("I don't need this.");
		}
	}	#:: Return unused items
	plugin::returnUnusedItems();
}
