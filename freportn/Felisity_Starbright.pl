sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail. $name. If you are interested in helping the League of Antonican Bards by delivering some mail you should talk to Ton Twostring.");
	}
} 

sub EVENT_ITEM {
	#:: Turn in for 18158 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18158 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(80);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Grant a cash reward
		quest::GiveCash(0,0,ChooseRandom(6,7,8,9),0); Copper - Plat
	}
	#:: Turn in for 18157 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18157 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(80);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Grant a cash reward
		quest::GiveCash(0,0,ChooseRandom(6,7,8,9),0); Copper - Plat
	}
	#:: Turn in for 18159 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18159 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Grant a cash reward
		quest::GiveCash(0,0,ChooseRandom(8,9,10,12),0); Copper - Plat
	}
	#:: Turn in for 18155 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18155 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
		#:: Grant a cash reward
		quest::GiveCash(0,0,ChooseRandom(11,12,13,14,15),0); Copper - Plat
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
