sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, fellow adventurer. Are you from Qeynos?");
	}
}

sub EVENT_ITEM {
	#::  18801 - Tattered Note
	if (plugin::check_handin(\%itemcount, 18801 => 1)) {
		quest::say("My sister is in danger. She is all the family I have left. I shall be on my way soon. Please take her my handkerchief, so she knows you have contacted me. Thank you. I am thankful Nerissa ran into you. I just wonder why she did not tell Kane about her suspicions.");
		#:: Summon a 13302 - Monogrammed Cloth
		quest::summonitem(13302);
		quest::ding();
		#:: Set factions
		quest::faction(311,10);		#:: Steel Warriors
		quest::faction(262,100);	#:: Guards of Quenos
		quest::faction(230,-10);		#:: Corrupt Qeynos Guards
		quest::faction(330,-10);	#:: Freeport Militia
		quest::faction(281,10);		#:: Knights of Truth
		#:: Spawn a 15193 - Eastern Plains of Karana >> #Guard_Elias, Grid 0, Guildwar 0, X, Y, Z, Heading
		quest::unique_spawn2(15193,135,0,-5521,-1870,3,226);
		quest::exp(2000);
	}
	#:: 18934 - Sealed Note, filename='LoveToMilea'
	if (plugin::check_handin(\%itemcount, 18934 => 1)) {
		quest::say("Oh great!! I thought I'd saw that last of Plagus, or as all the women in the Steel Warriors called him, the Plague. Please do not tell him where I am. It must have been a long journey for you. Here. A little something for your wasted trip. I found it on the ground. Have fun going back to Freeport.");
		#:: 3040 - Blackened Iron Coif, 5231 - Black Wolf Crown, 1037 - Fur Lined Shoes, 17005 - Backpack, 13003 - Small Lantern, 10008 - Gold Ring, 1005 - Cloth Shawl, 8791 - Ruined Rawhide Leggings, 1336 - Damask Cape, 2910 - Grizzly Hide Cloak
		quest::summonitem(quest::ChooseRandom(3040,5231,1037,17005,13003,10008,1005,8791,1336,2910));
		quest::ding();
		quest::faction(311,10);		#:: Steel Warriors
		quest::faction(262,100);	#:: Guards of Quenos
		quest::faction(230,-10);		#:: Corrupt Qeynos Guards
		quest::faction(330,-10);	#:: Freeport Militia
		quest::faction(281,10);		#:: Knights of Truth
		quest::exp(2000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	#:: where does this signal originate?
	if ($signal == 1) {
		quest::say("Get out of here! It is time I dealt with this traitorous guard. Okay guard, let's get it on!!");
		#:: send a signal to 15193 - Eastern Plains of Karana >> #Guard_Elias
		quest::signal(15193,1,5000);
	}
}

# Converted to Perl by SS
