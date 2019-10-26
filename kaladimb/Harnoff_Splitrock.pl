sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetins to ya friend Dwarf! I've got some of the finest quality steel ores in all the lands! It's a bit troublesome ta keep a large enough supply of it though, it bein sought after by every smith ya know. If you're needin some cash or ore how bout you [run an errand] fer me?");
 	}
	if ($text=~/run an errand/i) {
		quest::say("I was hopin you'd be up fer the job! Take this here crate and fill it with either Small Bricks of Unrefined Ore or Large Bricks of Unrefined Ore and I'll pay ya when ye return.");
		#:: Match a 17814 - Empty Ore Crate
		quest::summonitem(17814);
	}
}

sub EVENT_ITEM {
	#:: Match a 10952 - Small Shipment of High Quality Ore
	if (plugin::takeItems(10952 => 1)) {
		#:: Original text not found--adapted from similar quests
		quest::say("Thank you $name! I'll prepare the ore fer sale and be open fer business again soon. Here's yer payment fer yer services.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 7900 to 8100cp
		my %cash = plugin::RandomCash(7900,8100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(274,5);		#:: + Kazon Stormhammer
		quest::faction(290,5); 		#:: + Merchants of Kaladim
		quest::faction(322,-5); 	#:: - Miners Guild 628
		quest::faction(293,5); 		#:: + Miners Guild 249
		quest::faction(312,5);		#:: + Storm Guard
		#:: Spawn a North Kaladim >> Harnoff_Splitrock_ (67095)
		quest::spawn2(67095,0,0,$x,$y,$z,$h);
		#:: Disable spawn point
		quest::disable_spawn2(67057);
		#:: Depop
		quest::depop();
	}
	#:: Match a 10953 - Large Shipment of High Quality Ore
	elsif (plugin::takeItems(10953 => 1)) {
	#:: Original text not found--adapted from similar quests
		quest::say("Thank you $name! I'll prepare the ore fer sale and be open fer business again soon. Here's yer payment fer yer services.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(3500);
		#:: Create a hash for storing cash - 13900 to 14100cp
		my %cash = plugin::RandomCash(13900,14100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(274,5);		#:: + Kazon Stormhammer
		quest::faction(290,5); 		#:: + Merchants of Kaladim
		quest::faction(322,-5); 	#:: - Miners Guild 628
		quest::faction(293,5); 		#:: + Miners Guild 249
		quest::faction(312,5);		#:: + Storm Guard
		#:: Spawn a North Kaladim >> Harnoff_Splitrock_ (67095)
		quest::spawn2(67095,0,0,$x,$y,$z,$h);
		#:: Depop and disable spawn point
		quest::disable_spawn2(67057);
		#:: Depop
		quest::depop();
	}
  	#:: Return unused items
	plugin::returnUnusedItems();
}
