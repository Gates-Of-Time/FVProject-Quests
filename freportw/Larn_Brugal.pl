sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day to you $name I hope you yearn to become a Steel Warrior as we all are here in the Bunker. We are in need of more recruits to continue the [war].");
	}
	elsif ($text=~/war/i) {
		quest::say("The war I speak of is the one we Steel Warriors have sworn to wage agianst [Clan Deathfist] in the Commonlands. We are doing a fine job but we require more weapons. We are expecting a shipment of blades from Groflahs Forge. We require a warrior of the bunker to [get our shipment]. Maybe you?");
	}
	elsif ($text=~/clan deathfist/i) {
		quest::say("If you do not know of Clan Deathfist go ask Cain who they are. He will not only tell you he will sign you up to help fight our war!");
	}
	elsif ($text=~/shipment/i) {
		#:: Match if faction is amiable or better for Steel Warriors
		if ($faction < 5) {
			quest::say("We would be most thankful for your service. Please take this voucher over to Groflah at Groflahs Forge in North Freeport. He will give you the shipment of weapons.");
			#:: Give item 18820 - Sealed Letter
			quest::summonitem(18820);
		}
		else {
			quest::say("Only a warrior would be capable of this service, but thanks for offering.");
		}
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12244 - Raw Short Sword x4
	if (plugin::takeItems(12244 => 4 )) {
		quest::say("I heard you were on your way back. Here then. Let us sharpen that blade for you. There you are. That should be much better in a fray now.");
		#:: Ding!
		quest::ding();
		#:: Give item 5418 - Groflah's Stoutbite
		quest::summonitem(5418);
		#:: Give a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
