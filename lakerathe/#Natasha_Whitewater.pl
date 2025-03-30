sub EVENT_SPAWN {
	quest::shout("The Triumvirate of Water has decreed your fate, Shmendrik Lavawalker!! I am here to deliver said fate!!");
		#:: Send a signal "99" to Lake Rathetear >> Shmendrik_Lavawalker (51012) with a two second delay
	quest::signalwith(51012,99,2000);
}

sub EVENT_SAY {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if ($text=~/hail/i) {
			quest::say("The Riptide goblins must have their crown returned to them. If you would be so kind as to give me the crown I will make sure that it reaches them. Hopefully they are capable enough to repair the damage that has been done to it.");
		}
	}
}

sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28046 - Damaged Goblin Crown
		if (plugin::takeItems(28046=>1)) {
			quest::say("I will have this crown returned to the Riptide Goblins immediately! Should you ever come across an Erudite named Omat Vastsea, give him this sea shell. The waters of Norrath shimmer with awareness of your deeds here today!"); 
			#:: Give a 28047 - Ornate Sea Shell
			quest::summonitem(28047);
			#:: Ding!
			quest::ding();
			#:: Depop without spawn timer
			quest::depop();
		}
	} 
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	if ($signal == 199) {
		quest::say("Enough!! Your existence has come to an end!");
		#:: Send a signal "299" to Lake Rathetear >> Shmendrik_Lavawalker (51012) with a two second delay
		quest::signalwith(51012,299,2000);
	}
	if ($signal == 399) {
		quest::say("This conflict has been destined by the waters of the Triumvirate!");
		#:: Send a signal "499" to Lake Rathetear >> Shmendrik_Lavawalker (51012) with a two second delay
		quest::signalwith(51012,499,2000);
	}
	if ($signal == 599) {
		#:: Spawn a Lake Rathetear >> a_spirit_of_flame (51145), without grid or guild war, at the given location
		quest::spawn2(51145,0,0,33,3619,51,0);
	}
}
