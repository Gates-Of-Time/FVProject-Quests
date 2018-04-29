sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name. If you are interested in helping the League of Antonican Bards by delivering some mail then you should talk to my wife, Eve.");
	}
}

sub EVENT_ITEM {
	#:: Match turn in for 18150 - Bardic Letter (Qeynos)
	if (plugin::check_handin(\%itemcount, 18150 =>1)) {
		quest::say("Incoming mail - very good! Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Give random amount of cash
		quest::givecash(0,0,quest::ChooseRandom(1,2,3,4,5,6),0);
	}
	#:: Match turn in for 18151 - Bardic Letter (Qeynos)
	if (plugin::check_handin(\%itemcount, 18151 => 1)) {
		quest::say("Incoming mail - very good! Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Give random amount of cash
		quest::givecash(0,0,quest::ChooseRandom(1,2,3,4,5,6),0);
	}
	#:: Match turn in for 18153 - Bardic Letter (Qeynos)
	if (plugin::check_handin(\%itemcount, 18153=> 1)) {
		quest::say("Incoming mail - very good! Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Give random amount of cash
		quest::givecash(0,0,quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10,11,12),0);
	}
	#:: Match urn in for 18154 - Bardic Letter (Qeynos)
	if (plugin::check_handin(\%itemcount, 18154 => 1)) {
		quest::say("Incoming mail - very good! Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Give random amount of cash
		quest::givecash(0,0,quest::ChooseRandom(1,2,3,4,5,6,7,8,9,10,11,12),0);
	}
	plugin::return_items(\%itemcount);
}
