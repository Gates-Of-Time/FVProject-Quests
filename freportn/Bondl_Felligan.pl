sub EVENT_SAY {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		if($text=~/hail/i)
		{
			quest::emote("burps loudly in your face and says, 'Bah! Leave me be, fool! You have nothin' I want and I certainly have nothin' you want.");
		}
		elsif($text=~/you can buy booze/i)
		{
			if(defined($qglobals{shamanbondl})) {
				quest::emote("suddenly becomes completely sober and says, 'Very well, shaman, please come with me.'");
				#:: Spawn a Feeport North >> a_greater_spirit (8117), without grid or guild war, at the specified location
				quest::spawn2(8117,0,0,62,66,32.1,254);
				#:: Spawn a Feeport North >> a_greater_spirit_ (8118), without grid or guild war, at the specified location
				quest::spawn2(8118,0,0,67,103,32.1,508);
				quest::delglobal("shamanbondl");
				#:: Start Grid 15
				quest::start(15);
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
  	quest::say("Current wp: $wp");
	if ($wp == 6) {
  		quest::say("Current loc: $x $y");

	}
	if ($wp == 6 and $x == 407 and $y() == 235) {
		quest::say("What!? You don't approve of me buyin' some drinks with this gem? Who the heck are you to offer me a gift and order me what to do with it? Is this some kinda conditional kindness? Well? Are you gonna let me buy some booze with this or not?");
		quest::setglobal("shamanbondl",1,1,"F");
		#:: Stop Grid 13
		quest::stop();
	}
	else if ($wp == 22 and $x == 67.5 and $y() == 78.5) {
		#:: Stop Grid 15
		quest::stop();
	}
}