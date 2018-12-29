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
		#:: Create a hash for storing cash - 600 to 1000cp
		my %cash = plugin::RandomCash(600,1000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Turn in for 18157 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18157 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(80);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 600 to 1000cp
		my %cash = plugin::RandomCash(600,1000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Turn in for 18159 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18159 => 1 )) {
		quest::say("'Mail from the front - thank you very much! Please take this gold for your troubles. If you are interested in more work, just ask Ton Twostring.'");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 800 to 1200cp
		my %cash = plugin::RandomCash(800,1200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Turn in for 18155 - A Bardic Letter (Freeport)
	if (plugin::takeItems(18155 => 1 )) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 1100 to 15000cp
		my %cash = plugin::RandomCash(1100,1500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Turn in for 18166 - Pouch of Mail (Freeport)
	if (plugin::takeItems(18166 => 1 )) {
		quest::say("'Mail from the front - thank you very much! Please take this gold for your troubles. If you are interested in more work, just ask Ton Twostring");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 1100 to 15000cp
		my %cash = plugin::RandomCash(1100,1500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(192,100); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
