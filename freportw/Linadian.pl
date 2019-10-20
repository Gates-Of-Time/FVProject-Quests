sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. Please look through my fine wares. I have spent my whole life practicing my skills in tailoring. I do my best to compete with the other local merchants, but I have yet to make A profit. I pray to Tunare that my [" . quest::saylink("Banded Orc Vests") . "] will finally bring me A few extra coins.");
	}
	elsif($text=~/Banded Orc Vests/i) {
		#:: Match if faction with Kelethin Merchants is better than apprehensive
		if ($faction < 6) {
		quest::say("Glad you are interested! I can create A leather vest I call A Banded Orc Vest. It will aid you in repelling any disease and offers quite A bit of protection in battle. I will need some materials. For A Deathfist Banded Orc Vest, I require two Deathfist Shoulderpads worn by the Clan Deathfist, one Deathfist Slashed Belt, and ten gold coins. For A Crushbone Banded Orc Vest, I require two Crushbone Shoulderpads worn by the Clan Crushbone, one Crushbone Belt, and ten gold coins.");
		}
			else {
			quest::say("Your ways are considered vile to Faydark's Champions. Leave before my rage overcomes my restraint.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 2x Deathfist Shoulderpads, 2x Deathfist Slashed Belt, 10 gold
	if (plugin::takeItemsCoin(0,0,10,0, 13917 => 2, 13916 => 2)) {
		quest::say("Grand doing business with you. Hold your nose. I can never get rid of the Orc stench of the vests. That is why the other merchants do not pay me much for them.");
		#:: Ding!
		quest::ding();
		#:: Give item 12187 - Banded Orc Vest
		quest::summonitem(12187);
		#:: Give a small amount of xp
		quest::exp(150);
		#:: Set faction
		quest::faction(276,1);	 	#:: + Kelethin Merchants
		quest::faction(246,1); 		#:: + Faydark's Champions
		quest::faction(326,1); 		#:: + Emerald Warriors
		quest::faction(5001,1); 	#:: - Anti-mage Faction
	}
	#:: Turn in for 2x Crushbone Shoulderpads, 2x Crushbone Belt, 10 gold
	if (plugin::takeItemsCoin(0,0,10,0, 13319 => 2, 13318 => 2)) {
		quest::say("Grand doing business with you. Hold your nose. I can never get rid of the Orc stench of the vests. That is why the other merchants do not pay me much for them.");
		#:: Ding!
		quest::ding();
		#:: Give item 12187 - Banded Orc Vest
		quest::summonitem(12187);
		#:: Give a small amount of xp
		quest::exp(150);
		#:: Set faction
		quest::faction(276,1);	 	#:: + Kelethin Merchants
		quest::faction(246,1); 		#:: + Faydark's Champions
		quest::faction(326,1); 		#:: + Emerald Warriors
		quest::faction(5001,1); 	#:: - Anti-mage Faction
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
}	
