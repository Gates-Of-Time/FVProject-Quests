sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("Yes. yes. yes.  Hail to you. too, %s.  Now, quit bugging me! $name.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18855 -  A Tattered note
	if (plugin::check_handin(\%itemcount, 18855 => 1)) {
		quest::say("Welcome, friend. I see more than a slight glimmer of hate in your eyes. Good... for we have much work to do.");
		#:: Give item 13565 - Old Stained Robe*
		quest::summonitem(13565);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(271,100); 	#:: + Dismal Rage
		quest::faction(281,-15); 	#:: - Knights of Truth
		quest::faction(296,20); 	#:: + Opal Dark Briar
	}
	plugin::return_items(\%itemcount);
}
