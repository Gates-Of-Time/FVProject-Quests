sub EVENT_SAY {
	if ($text=~/crate of pickhead/i) {
		quest::say("I've heard that a dwarf who calls himself Grendig and has not registered with the Coalition of Tradefolk has recently arrived in Freeport and is staying at the Freeport Inn just inside the South Gate. He has brought to Freeport pick heads from his home city of Kaladim. Find Grendig and 'convince' him to 'donate' a crate of pick heads to the Coalition of Tradefolk as tax for peddling his wares in our city.");
	}
	if ($text=~/bundle of hardwood shafts/i) {
		quest::say("There is a halfling named Jimble Woodentoe that occasionally visits Freeport to peddle his woodcrafts. He can be found traveling through the Commonlands from the direction of Rivervale. Find Jimble and 'convince' him to donate a bundle of hardwood shafts to the Coalition of Tradefolk as tax for peddling his wares in our city.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 19917 -  Bent Playing Card
	if (plugin::check_handin(\%itemcount, 19917 => 1)) {
		quest::say("Excellent I've been waiting for the Coalition to send me some assistance. I have an associate waiting for some supplies that have not yet been collected. I need you to acquire a [" . quest::saylink("crate of pick heads") . "] and a [" . quest::saylink("bundle of hardwood shafts") . "] and bring them to me so that I may prepare them for delivery to my associate.");
	}
	#:: Turn in for 19931 and 19929 -  Bundle of Hardwood Staves and Crate of Pick Axe Heads
	if (plugin::check_handin(\%itemcount, 19931 => 1, 19929 => 1)) {
		quest::say("Thanks $class.  Now hand this crate to the fellow behind you, $name.");		
		#:: Give item 19930 - Large Crate of Mining Supplies
		quest::summonitem(19930);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
	    #Spawn Orc Centurion (10000)
		quest::spawn2(1000, 0, 0, -144, -456, -52, 0);
	}
	plugin::return_items(\%itemcount);
}
