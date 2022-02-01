sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome to my shop, sss. Only the finessst I have. I make for you jussst as I make for the emperor's harem. Many [bristle silk] garmentsss do they need. Ssss.. Lucky man, the emperor isss.");
	}
	elsif ($text=~/bristle silk/i) {
		quest::say("What is bristle silk?!! Huh? Where have you been living? Under the rocksss.. Nahh. I sssee. You are a broodling from the common ssstock. You could never afford bristle silk nor the affectionss of those who drape themselves with it. Still, commons have much ssservice to offer. Maybe you would like to earn some [curscale armor]. Hmm?");
	}
	elsif ($text=~/curscale armor/i) {
		quest::say("Curscale armor? I make thisss crude armor from the broodlings of the scaled wolves. I use the ssskins of the pupsss and cubs. Those ssskins are ssstill young and thin and are bessst for the young adventurers. I sssupply them to the Legion of Cabilisss, but for a [small service] I shall make them available to you.");
	}
	elsif ($text=~/what small service/i) {
		quest::say("I am in need of pup and cub scaled wolf skins to create more [curscale armor]. Many Legionnaires have died in battle. The Baron demands more sssuits. I mussst have more ssskins or it is MY HIDE!! I shall reward pieces of the curscale armor to any who [perform a small service].");
	}
	elsif ($text=~/perform/i) {
		quest::say("Good. You take thisss pack and fill it all with scaled curskins. Only the pupsss and cubs of the scaled wolves shall do. They are not much for one sssuch as you. Combine all those ssskins and return the full curskin pack and I shall reward you with any available piece of curskin armor and a sssmall amount of coin. Mossst important is that you shall be proving your allegiance to all of Cabilisss.");
		#:: Give a 17992 - Empty Curskin Bag
		quest::summonitem(17992);
	}
}

sub EVENT_ITEM {
	#:: Match a 12655 - Full Curskin Bag
	if (plugin::takeItems(12655 => 1)) {
		quest::say("You are a good servant and a fine citizen. I have this piece of curscale armor available, but if it is not enough then perhaps I shall have another piece available if you were to [perform the small service] again.");
		#:: Give a random reward:  4270 - Curscale Skullcap, 4271 - Curscale Snout Mount, 4272 - Curscale Choker, 4273 - Curscale Tunic, 4274 - Curscale Shawl, 4275 - Curscale Cape, 4276 - Curscale Belt, 4277 - Curscale Sleeves, 4279 - Curscale Gloves, 4280 - Curscale Leggings, 4281 - Curscale Boots
		quest::summonitem(quest::ChooseRandom(4270, 4271, 4272, 4273, 4274, 4275, 4276, 4277, 4279, 4280, 4281));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(440, 5); 	#:: + Cabilis Residents
		quest::faction(441, 1);		#:: + Legion of Cabilis
    		#:: Grant a large amount of experience
		quest::exp(10000);
		#:: Create a hash for storing cash - 100 to 400cp
		my %cash = plugin::RandomCash(100, 400);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12685 - Full Pouch of Leech Husks
	elsif (plugin::takeItems(12685 => 1)) {
		quest::say("Now you need to get three Piles of Granite Pebbles and then you can tailor a Monk Training Bag for your caste.");
		#:: Give a 12687 - Training Bag Husk
		quest::summonitem(12687);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
