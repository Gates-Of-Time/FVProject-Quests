sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, fellow adventurer. Are you from Qeynos?");
		}
}

sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 18801 => 1)) { # Note To Milea
		quest::Say("My sister is in danger. She is all the family I have left. I shall be on my way soon. Please take her my handkerchief, so she knows you have contacted me. Thank you. I am thankful Nerissa ran into you. I just wonder why she did not tell Kane about her suspicions.");
		quest::SummonItem(13302); # Monogrammed Cloth
		quest::Ding();
		quest::Faction(311,10); # Steel Warriors
		quest::Faction(135,100); # Guards of Quenos
		quest::Faction(53,-10); # Corrupt Qeynos Guards
		quest::Faction(105,-10); # Freeport Militia
		quest::Faction(184,10); # Knights of Truth
		quest::unique_spawn2(15193,135,0,-5521,-1870,3,226); # MobID 15193 Guard Elias, Grid 0, Guildwar 0, X, Y, Z, Heading
		quest::exp(2000);
		}
	if (plugin::check_handin(\%itemcount, 18934 => 1)) { # sealed letter', filename='LoveToMilea'
		quest::Say("Oh great!! I thought I'd saw that last of Plagus, or as all the women in the Steel Warriors called him, the Plague. Please do not tell him where I am. It must have been a long journey for you. Here. A little something for your wasted trip. I found it on the ground. Have fun going back to Freeport.");
        $items = quest::ChooseRandom(3040,5231,1037,17005,13003,10008,1005,8791,1336,2910); # Blackened Iron Coif, Black Wolf Crown, Fur Lined Shoes, Backpack, Small Lantern, Gold Ring, Cloth Shawl, Ruined Rawhide Leggings, Damask Cape, Grizzly Hide Cloak
        quest::summonitem($items);
		quest::Ding();
		quest::Faction(311,10); # Steel Warriors
		quest::Faction(135,100); # Guards of Quenos
		quest::Faction(53,-10); # Corrupt Qeynos Guards
		quest::Faction(105,-10); # Freeport Militia
		quest::Faction(184,10); # Knights of Truth
		quest::exp(2000);
		}

		#:: Return unused items
	plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	if ($signal == 1) {
	quest::Say("Get out of here! It is time I dealt with this traitorous guard. Okay guard, let's get it on!!");
	quest::signal(15193,1,5000);  # to Guard Elias
	}
}

# Converted to Perl by SS 
