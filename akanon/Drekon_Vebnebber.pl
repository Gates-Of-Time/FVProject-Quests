sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. It is grand to make your acquaintance. I am the in-house merchant-slash-file clerk. I have goods to offer and I handle all the Gemchopper paperwork. Thrilling, don't you think?");
	}
	if ($text=~/Red 5/i) {
		quest::say("Red 5 is rumored to be a haywire clockwork. They say he pieced himself back together and lives in the scrapyard. If he IS there, you must hunt him down and take his blackbox to Manik Compolten. Be careful, if Red 5 rebuilt himself, he may have rebuilt minions as well.");
}

sub EVENT_ITEM {
	#:: Turn in for 18837 -   Daily Log Initiating the first of two possible quest lines
	if (plugin::check_handin(\%itemcount, 18837 => 1)) {
		quest::say("Why, thank you. Hey!! This log indicates some messy business is going on at the scrapyard. Something happened to a group of gnomes. They never came out!! Go check out the scrapyard! I believe the rumors of [" . quest::saylink("Red 5") . "] are true.");
		#:: Give xp
		quest::exp(2000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,2); 		#:: + Gem Cutters
		quest::faction(210,2); 		#:: + Merchants of Ak'Anon
		quest::faction(176,2); 		#:: + King Ak'Anon
		quest::faction(71,-2); 		#:: - Dark Reflection
		quest::faction(39,-2); 		#:: - Clan Grikbar
	}
	#:: Turn in for 18838 -  Daily Log Initiating the second of two possible quest lines
	if (plugin::check_handin(\%itemcount, 18838 => 1)) {
		quest::say("Oh my! It seems two of the obsolete duster models were not fully shut down. You must find them. They could be anywhere in Ak'Anon! After you destroy them, take their scraps to Sanfyrd Montop. He is the operator of the scrapyard.");
		#:: Give xp
		quest::exp(2000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,2); 		#:: + Gem Cutters
		quest::faction(210,2); 		#:: + Merchants of Ak'Anon
		quest::faction(176,2); 		#:: + King Ak'Anon
		quest::faction(71,-2); 		#:: - Dark Reflection
		quest::faction(39,-2); 		#:: - Clan Grikbar
	}
	plugin::return_items(\%itemcount);
	}
}
