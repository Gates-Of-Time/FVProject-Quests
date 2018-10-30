sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Greetings!  Please look through my fine wares.  I have spent my whole life practicing my skills in tailoring.  I do my best to compete with the other local merchants, but I have yet to make a profit.  I pray to Tunare that my [" . quest::saylink("banded orc vests") . "] will finally bring me a few extra coins.");
	}
	if ($text=~/banded orc vests/i) {
		quest::say("Glad you are interested!  I can create a leather vest I call a banded orc vest.  It will aid you in repelling any disease and offers quite a bit of protection in battle.  I will need some materials. For a Crushbone banded orc vest, I require two legionnaire pads worn by the Clan Crushbone, one Crushbone belt, and ten gold coins.");
	}
}

sub EVENT_ITEM {
	#:: Match two 13319 - Crushbone Shoulderpads, one 13318 - Crushbone Belt, and 10 gold coins
	if (plugin::takeItemsCoin(0, 0, 10, 0, 13319 => 2, 13318 => 1)) {
		quest::say("Grand doing business with you. Hold your nose. I can never get rid of the orc stench of the vests. That is why the other merchants do not pay me much for them.");
		#:: Give a 12187 - Banded Orc Vest
		quest::summonitem(12187);
		#:: Ding!!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factions
		quest::faction(8,10);	#:: + Anti-mage
		quest::faction(174,10);	#:: + Kelethin Merchants
		quest::faction(99,10);	#:: + Faydark's Champions
		quest::faction(92,10);	#:: + Emerald Warriors
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
