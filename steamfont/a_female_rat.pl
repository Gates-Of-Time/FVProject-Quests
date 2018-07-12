sub EVENT_ITEM {
	#:: Match a 10262 - Vial of Infectious Disease
	if(plugin::check_handin(\%itemcount, 10262 => 1)) {
		quest::emote("ingests the virulent substance and becomes ill.");
		#:: Give a 10263 - Empty Infectious Vial
		quest::summonitem(10263);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Spawn a Steamfont Mountains >> diseased_female_rat (56148)
		quest::spawn2(56148,0,0,$x,$y,$z,$h);
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
