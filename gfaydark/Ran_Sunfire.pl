sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hail, $name! I trust you are not afraid of heights. Kelethin is a grand city, but it is also a safe haven from predators and evil beings. About the only thing to fear are the [pixie tricksters].");
	}
	elsif ($text=~/pixie tricksters/i) {
		quest::say("An irritating lot of fairy folk. They have been starting fires in our great forest. They may just burn our grand community down. We will have to [exterminate the pixies]. It is unfortunate. but it is for the good of the entire forest.");
	}
	elsif ($text=~/exterminate the pixies/i) {
		quest::say("Then I give you this pouch. Should you fill and combine it with pixie dust, I shall pay you greatly for your deeds. We may even find a use for the dust itself. Careful, small though they may be, many are quite strong. Search for the weak ones for now.");
		#:: Give a 17957 - Empty Pouch
		quest::summonitem(17957);
	}
}

sub EVENT_ITEM {
	#:: Match 12109 - Pouch of Pixie Dust
	if (plugin::takeItems(12109 => 1)) {
		quest::say("We thank you for your deed. Here, then, is a small reward. Nothing more than long forgotten equipment, but it may be useful to a young $class.");	
		#:: Give a random reward: 2104 - Patchwork Tunic, 2106 - Patchwork Cloak, 2108 - Patchwork Sleeves, 2111 - Patchwork Pants, 2112 - Patchwork Boots
		#:: 2137 - Raw-hide Skullcap, 2138 - Raw-hide Mask, 2139 - Raw-hide Gorget, 2140 - Raw-hide Tunic, 2141 - Raw-hide Shoulderpads, 2142 - Raw-hide Cloak, 2143 - Raw-hide Belt, 2144 - Raw-hide Sleeves, 2145 - Raw-hide Wristbands, 2146 - Raw-hide Gloves, 2147 - Raw-hide Leggings, 2148 - Raw-hide Boots
		quest::summonitem(quest::ChooseRandom(2104, 2106, 2108, 2111, 2112, 2137, 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(246, 20);		#:: + Faydark's Champions
		quest::faction(279, 5);			#:: + King Tearis Thex
		quest::faction(226, 5);			#:: + Clerics of Tunare
		quest::faction(310, 5);			#:: + Soldiers of Tunare
		quest::faction(234, -5);		#:: - Crushbone Orcs
		#:: Grant a small amount of experience
		quest::exp(800);
		#:: Create a hash for storing cash - 10 to 100cp
		my %cash = plugin::RandomCash(10,100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Ranger');
	#:: Return unused items
	plugin::returnUnusedItems();
}
