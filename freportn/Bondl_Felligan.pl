sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i)
		{
			quest::emote("burps loudly in your face and says, 'Bah! Leave me be, fool! You have nothin' I want and I certainly have nothin' you want.");
		}
		elsif($text=~/you can buy booze/i)
		{
			quest::emote("suddenly becomes completely sober and says, 'Very well, shaman, please come with me.'");
			#:: Start Grid 13
			quest::start(13);
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1665 - Tiny Gem
		if(plugin::takeItems(1665 => 1)) 
		{
			quest::say("WOW, thanks! This must be worth a fortune! I could drink for a month after sellin' this to one of them fool merchants. I'm going to see how much I can get for it right now!");
			quest::say("What!? You don't approve of me buyin' some drinks with this gem? Who the heck are you to offer me a gift and order me what to do with it? Is this some kinda conditional kindness? Well? Are you gonna let me buy some booze with this or not?");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(342, 100); 	#:: + Truespirit
			#:: Grant a small amount of experience
			quest::exp(1000);
			#:: Spawn a Feeport North >> a_greater_spirit (8117), without grid or guild war, at the specified location
			quest::spawn2(8117,0,0,62,66,32.1,254);
			#:: Spawn a Feeport North >> a_greater_spirit_ (8118), without grid or guild war, at the specified location
			quest::spawn2(8118,0,0,67,103,32.1,508);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}