#:: Screaming Mace Quest

sub EVENT_SAY {
	if ($text=~/king is dead/i) {
		quest::say("Dead you say? My goodness! Did you manage to slay the warlord too? If you provide me with proof of his death, I can enchant the mace the dwarf gave you as payment. But, I will require the proof first!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 2301 -  Bracers of Battle
	if (plugin::check_handin(\%itemcount, 2301 => 1)) {
		quest::say("Erollisi be praised! You slew the orc lord! Well, here is a token of my appreciation! Should you wish to have that mace enchanted, just hand me the mace and my token and I shall uphold my end of the bargain!");
		#:: Give item 1900 - Prayer Cloth of Tunare
		quest::summonitem(1900);
		#:: Give a small amount of xp
		quest::exp(5000);
		#:: Ding!
		quest::ding();
	}
	#:: Give item 1900 - Prayer Cloth of Tunare and Dwarven Mace
	if (plugin::check_handin(\%itemcount, 1900 => 1, 6315 => 1)) {
		quest::say("Erollisi be praised! You slew the orc lord! Well, here is a token of my appreciation! Should you wish to have that mace enchanted, just hand me the mace and my token and I shall uphold my end of the bargain!");
		#:: Give item 6305 - Screaming Mace
		quest::summonitem(6305);
		#:: Give a small amount of xp
		quest::exp(10000);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
