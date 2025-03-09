sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i)
		{
			quest::emote("burps loudly in your face and says, 'Bah! Leave me be, fool! You have nothin' I want and I certainly have nothin' you want.");
		}
		elsif($text=~/you can buy booze/i)
		{
			#:: Key up a data bucket
			$key = $name .  "-shaman-epic-bondl";
			#:: Match if the key does not exist
			if(quest::get_data($key)) {
				quest::emote("suddenly becomes completely sober and says, 'Very well, shaman, please come with me.'");
				#:: Spawn a Feeport North >> a_greater_spirit (8117), without grid or guild war, at the specified location
				quest::spawn2(8117,0,0,62,66,32.1,254);
				quest::spawn2(8118,0,0,67,103,32.1,508);
				#:: Destroy the data bucket
				quest::delete_data($key);
				#:: Stop the timer 'depop'
				quest::stoptimer("stop13");
				#:: Stop Grid 13
				quest::stop();
				#:: Start Grid 15
				quest::start(15);
			} else {
				quest::emote("no key...");
			}
		}
	}
}

sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 1665 - Tiny Gem
		if(plugin::takeItems(1665 => 1)) 
		{
			quest::say("WOW, thanks! This must be worth a fortune! I could drink for a month after sellin' this to one of them fool merchants. I'm going to see how much I can get for it right now!");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(342, 100); 	#:: + Truespirit
			#:: Grant a small amount of experience
			quest::exp(1000);
			#:: Start Grid 13
			quest::start(13);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 6) {
		quest::say("What!? You don't approve of me buyin' some drinks with this gem? Who the heck are you to offer me a gift and order me what to do with it? Is this some kinda conditional kindness? Well? Are you gonna let me buy some booze with this or not?");
		#:: Key up a data bucket
		$key = $name . "-shaman-epic-bondl";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			quest::set_data($key, 1);
		}
		#:: Create a timer 'stop13' that triggers every 120 seconds (2 min)
		quest::settimer("stop13",120);
	}
	elsif ($wp == 22) {
		#:: Create a timer 'stop15' that triggers every 30 seconds
		quest::settimer("stop15",30);
	}
}


sub EVENT_TIMER {
	#:: Match the timer 'stop13'
	if ($timer eq "stop13") {
		#:: Stop the timer 'stop13'
		quest::stoptimer("stop13");
		#:: Stop Grid 13
		quest::stop();
	}
	#:: Match the timer 'stop15'
	elsif ($timer eq "stop15") {
		#:: Stop the timer 'stop15'
		quest::stoptimer("stop15");
		#:: Stop Grid 15
		quest::stop();
	}
}
