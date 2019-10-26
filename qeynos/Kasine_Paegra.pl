sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("May the blessings of the Rainkeeper protect you in your travels. I am Kasine Paegra, keeper of the [Order of Thunder] medallions.");
	}
	elsif ($text=~/order of thunder/i) {
		quest::say("The Order of Thunder is the medal awarded to a Knight of Thunder who has proven himself superior to the average warrior. All knights and priests of Thunder have one, save for the youngest members. Along with the medal comes great respect. You might say the wearer becomes more charismatic. Should you find one, please return it to Kasine Paegra, unless told otherwise.");
	}
	elsif ($text=~/enchant bonethunder/i) {
		quest::say("If you wish the power of the Rainkeeper to once again shine upon your weapon, you must hand me Bonethunder and 500 Gold Coins.");
	}
}

sub EVENT_ITEM {
	#:: This is a leftover from when the Bonethunder Staff only had one charge of Ward Undead
	#:: Match a 6358 - Bonethunder Staff and 500 gold coins
	if (plugin::takeItemsCoin(0,0,500,0, 6358 => 1)) {
		quest::say("The Rainkeeper has bestowed this weapon with power once more. Take it and defend our temple.");
		#:: Give a 6358
		quest::summonitem(6358,1);
		#:: Set factions
		quest::faction(280, 50);	#:: + Knights of Thunder
		quest::faction(221, -50);	#:: - Bloodsabers
		quest::faction(341, 37);	#:: + Priests of Life
		quest::faction(262, 37);	#:: + Guards of Qeynos
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
