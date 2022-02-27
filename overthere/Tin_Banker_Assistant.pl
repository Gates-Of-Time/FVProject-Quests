sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Insert Metal Key *whirrrr*."); 
	}
}

sub EVENT_ITEM {
	#:: Match a 12849 - Metal Key
	if (plugin::takeItems(12849 => 1)) {
		quest::emote("shudders and begins to clang.  You hear the sound of an ocean of coins.  A small door pops open and a book pops out.  A few coins also manage to escape.");
		#:: Give a 18065 - Journal
		quest::summonitem(18065);
		#:: Spit out random copper, then silver, then gold
		quest::givecash(quest::ChooseRandom(1..9), 0, 0, 0);
		quest::givecash(0, quest::ChooseRandom(1..9), 0, 0);
		quest::givecash(0, 0, quest::ChooseRandom(1..9), 0);
		#:: Create a timer 'Tin' that triggers in 60 seconds
		quest::settimer("Tin", 60);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_TIMER {
	#:: Match timer 'Tin'
	if ($timer eq "Tin") {
		quest::stoptimer("Tin");
		quest::emote("..click..  You are in violation of Danak law number 2162... Click... Prepare for Termination.  Thank you for your cooperation.");
		quest::emote("begins to spark! 'Click... Tick... Primary motor failing.  Appendage servos 247, 369, 25 and 144 destroyed.  Klick... Klick... Have nice day... Have a ni- nice, nice, ni nice d-d-d-day... Klick, POP!");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}
