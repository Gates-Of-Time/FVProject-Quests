sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("'Greetings, $name. I am Rykas, chronicler of knowledge. I have journeyed all throughout the lands of Norrath, and I have learned many tales of adventure from people I have encountered during my travels. I have learned of legends known and unknown to most mortals. Are you in search of knowledge?");
		}
		if ($text=~/knowledge/i) {
			quest::say("A small task is needed if you wish to learn more. Do you wish to learn the tale of Magi'kot?");
		}
		if ($text=~/Magi'kot/i) {
			quest::say("If you seek to learn the tale of Trilith Magi'kot, your journey shall begin in the Commonlands. Search for Jahsohn Aksot and give him this token. He will share some of the knowledge I have bestowed upon him, and point you further down your path to Mastery. Bring me the Words of Mastery, Power of the Elements, and the Words of Magi'kot....Then you shall learn more about the power of the orb.");
			#:: Give a 28035 - Token of Mastery
			quest::summonitem(28035);
		}
  	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28003 - Words of Magi`kot, a 28004 - Words of Mastery and a 28031 - Power of the Elements
		if (plugin::takeItems(28003 => 1, 28004 => 1, 28031 => 1)) {
			quest::say("I see that you have completed the quest I laid before you. That speaks well of your dedication, yet you do not realize your journey has just begun. Study this tome.");
			#:: Give a 18958 - Power of the Orb
			quest::SummonItem(18958);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(2000);
		}
		else {
			quest::say("I do not need these.");  
		}
  	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
