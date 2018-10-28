sub EVENT_ITEM {
	#:: Match a 18906 - Small Wood Carving
	if (plugin::takeItems(18906 => 1)) {
		quest::say("Why, that..! Bah! Fine. Stupid as a newborn gob. She's not gonna get this, then. Hey, you might as well take it. It was gonna be her reward fer a job well done.");
		#:: Give a 23359 - Targ Shield
		quest::summonitem(23359);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(30000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
