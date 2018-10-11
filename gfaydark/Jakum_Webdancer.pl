sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hail. $name - If you are interested in helping the League of Antonican Bards by delivering some mail then you should talk to Idia.");
	}
}

sub EVENT_ITEM {
	#:: Match 18161 - Bardic Letter (Kelethin)
	if (plugin::takeItems(18161 => 1)) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(50);
		#:: Create a hash for storing cash - 300 to 600cp
		my %cash = plugin::RandomCash(300,600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Match 18161 - Bardic Letter (Kelethin), 18162 - Bardic Letter (Kelethin), 18163 - Bardic Letter (Kelethin)
	if (plugin::takeItems(18160 => 1) || (plugin::takeItems(18162 => 1) || (plugin::takeItems(18163 => 1)) {
		quest::say("Incoming mail - very good!  Please take this gold for your troubles.");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(80);
		#:: Create a hash for storing cash - 600 to 900cp
		my %cash = plugin::RandomCash(600,900);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(192,10); 	#:: + League of Antonican Bards
		quest::faction(184,10); 	#:: + Knights of Truth
		quest::faction(135,10); 	#:: + Guards of Qeynos
		quest::faction(273,-30); 	#:: - Ring of Scale
		quest::faction(207,-30); 	#:: - Mayong Mistmoore
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
