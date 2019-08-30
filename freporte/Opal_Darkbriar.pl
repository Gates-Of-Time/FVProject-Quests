sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings! You will have to excuse me. I have no time to talk right now and I prefer to be left alone. Please leave.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 18742 -  A tattered note
	if (plugin::check_handin(\%itemcount, 18742 => 1)) {
		quest::say("Welcome to the Guild, here's your guild robe. Now, let's get to work.");
		#:: Give item 13562 - Dark Stained Robe
		quest::summonitem(13562);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Give a small amount of cash copper - plat
		quest::givecash(1,1,5,4);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(296,100); 	#:: + Opal Dark Briar
		quest::faction(271,25); 		#:: + Dismal Rage
		quest::faction(239,25); 	#:: + The Dead
		quest::faction(238,25); 		#:: + Dark Reflection
		quest::faction(221,25); 		#:: + Bloodsabers		
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
