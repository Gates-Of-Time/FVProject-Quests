sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, small one! I am Xanuusus of the Stormreapers. You are welcome to rest beneath my mighty branches.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13411 - Case of Jumjum Juice
	if (plugin::takeItems(13411 => 1 )) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Heh heh! Excellent, small one!  My roots have been longing for some fresh jumjum juice!  Thank you!  Take this for your trouble.  Be sure to thank the Tagglefoots for me.");
			#:: Give a random reward: 13977 - carrot, 84004 - fishing pole, or 13083 - pine needles
			quest::summonitem(quest::ChooseRandom(13977,84004,13083));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(355, 10);		#:: + Storm Reapers
			quest::faction(286, 1);			#:: + Mayor Gubbin
			quest::faction(292, 1);			#:: + Merchants of Rivervale
			quest::faction(329, -1);		#:: - Unkempt Druids
			#:: Grant a small amount of experience
			$client->AddLevelBasedExp(4, 5);
			#:: Create a hash for storing cash - 70 to 90cp
			my %cash = plugin::RandomCash(70,90);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::emote("will not accept this item.");
			#:: Return a 13411 - Case of Jumjum Juice
			quest::summonitem(13411);
		}
	}
	elsif (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Match a 20483 - Refined Mithril Blade and a 20484 - Shattered Emerald of Corruption
		if (plugin::takeItems(20483 => 1, 20484 => 1)) {
			quest::emote("waves his hands over the gem of corruption and a wave of warm energy passes through the area. With care for such a huge creature, he melds the gem into the sword and seems to glow all over as he channels energy into the weapon. 'Thus is the link of hate broken between Innoruuk and the spirit of earth. Through your will has balance returned. Your deeds, your work for the good of all, will be remembered by anyone who walks beneath the canopy of a forest or roams the plains. Continue your vigil over nature's balance.'");
			#:: Give a 20488 - Earthcaller
			quest::summonitem(20488);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(2500000);
		}
		#:: Match a 20699 - Cleansed Spirit of Kunark, a 20697 - Cleansed Spirit of Faydwer, a 20698 - Cleansed Spirit of Antonica and a 20440 - Elaborate Scimitar
		elsif (plugin::takeItems(20699 => 1, 20697 => 1, 20698 => 1, 20440 => 1)) {
			quest::emote("pushes the spirits into the air, making them dance around the scimitar. With a wave of his hand they melt into the blade and hilt of the weapon. 'With this the spirits of the lands are now free from the corruption of the dark gods.  Through your strength and dedication was this possible, $name.  May the foul poison that once poured into the earth itself never do so again. Take this weapon that you may continue to watch over the balance of nature. Go now, with the gods' blessings.'");
			#:: Give a 20490 - Nature Walkers Scimitar
			quest::summonitem(20490);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(2500000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
