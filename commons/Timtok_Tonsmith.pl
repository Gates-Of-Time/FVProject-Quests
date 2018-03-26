# resize crafted armor to small size

sub EVENT_SAY {
	#:: Check that faction is Indifferent or better
	if ($faction <= 5) {
		if ($text=~/hail/i) {
			quest::say("Hail! I am Timtok Tonsmith. My brother Ranvigoz and I are some of the finest smiths this side of Kaladim. If you are interested we will happily [" . quest::saylink("resize") . "] your [" . quest::saylink("Crafted Armor") . "] down to a more manageable size.");
		}
		if ($text=~/resize/i) {
			quest::say("I will resize Crafted Gauntlets, a Vambrace, a Helm or Boots. My brother will resize Crafted Bracers, Greaves, a Pauldrun or a Breastplate. Just give me the armor and I will resize it for you.");
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
		#:: Match 4178 - Crafted Gauntlets
		if (plugin::check_handin(\%itemcount, 4178 => 1)) {
			#:: Summon 4186 - Small Crafted Gauntlets
			quest::summonitem(4186);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4176 - Crafted Vambraces
		if (plugin::check_handin(\%itemcount, 4176 => 1)) {
			#:: Summon 4184 - Small Crafted Vambraces
			quest::summonitem(4184);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4173 - Crafted Helm
		if (plugin::check_handin(\%itemcount, 4173 => 1)) {
			#:: Summon 4181 - Small Crafted Helm
			quest::summonitem(4181);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
		#:: Match 4180 - Crafted Plate Boots
		if (plugin::check_handin(\%itemcount, 4180 => 1)) {
			#:: Summon 4188 - Small Crafted Plate Boots
			quest::summonitem(4188);
			quest::say("Here is your armor. I hope it fits better now.");
			quest::faction(47,10);	#:: Coalition of Tradefolk
			quest::faction(184,10);	#:: Knights of Truth
			quest::faction(217,10);	#:: Merchants of Qeynos
			quest::faction(369,10);	#:: Coalition of Tradefolk III
		}
	}
	plugin::return_items(\%itemcount);
}
