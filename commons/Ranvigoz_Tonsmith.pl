# resize crafted armor to small size

sub EVENT_SAY {
	#:: Check that faction is Indifferent or better
	if ($faction <= 5) {
		if ($text=~/hail/i) {
			quest::say("Hail! I am Ranvigoz Tonsmith. My brother Timtok and I are some of the finest smiths this side of Kaladim. If you are interested we will happily [" . quest::saylink("resize") . "] your [" . quest::saylink("Crafted Armor") . "] down to a more manageable size.");
		}
		if ($text=~/resize/i) {
			quest::say("I will resize Crafted Bracers, Greaves, a Pauldron or a Breastplate. My brother will resize Crafted Gauntlets, a Vambrace, a Helm or Boots. Just give me the armor and I will resize it for you.");
		}
		if ($text=~/crafted armor/i) {
			quest::say("Crafted Armor is made by the Meadowgreen smiths. They can be found in the southern part of the Karanas.");
		}
	}
	else {
		quest::emote("will not speak to you, yet.");
	}
}

sub EVENT_ITEM {
	#:: Check that faction is Indifferent or better
	if ($faction <= 5) {
		#:: Match 4177 - Crafted Bracers
		if (plugin::check_handin(\%itemcount, 4177 => 1)) {
			#:: Summon 4185 - Small Crafted Bracers
			quest::summonitem(4185);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4179 - Crafted Greaves
		if (plugin::check_handin(\%itemcount, 4179 => 1)) {
			#:: Summon 4187 - Small Crafted Greaves
			quest::summonitem(4187);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4175 - Crafted Pauldron
		if (plugin::check_handin(\%itemcount, 4175 => 1)) {
			#:: Summon 4183 - Small Crafted Pauldron
			quest::summonitem(4183);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4174 - Crafted Breastplate
		if (plugin::check_handin(\%itemcount, 4174 => 1)) {
			#:: Summon 4182 - Small Crafted Breastplate
			quest::summonitem(4182);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
	}
	plugin::return_items(\%itemcount);
}
