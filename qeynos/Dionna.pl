sub EVENT_ITEM {
	#:: Turn in for 13708 -  Note From Fabian
	if (plugin::check_handin(\%itemcount, 13708 => 1)) {
		quest::say("Ah, well, Fabian said to give you this. It really is a good piece. Good luck!");
		#:: Give item 85059 - Cloak of Hazy Memories
		quest::summonitem(85059);
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(192,5); 		#:: + League of Antonican Bards
		quest::faction(184,5); 		#:: + Knights of Truth
		quest::faction(135,5); 		#:: + Guards of Qeynos
		quest::faction(273,-5); 	#:: - Ring of Scale
		quest::faction(207,-5); 	#:: - Mayong Mistmoore
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
 }
