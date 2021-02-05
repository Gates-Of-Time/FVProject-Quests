#:: See also:  qeynos/#Lanhern_Firepride.pl

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day, traveler! You look as though you are in need of [superior armor]. We here at Firepride's specialized in armor.");
	}
	elsif ($text=~/superior armor/i) {
		quest::say("Our forge skills were acquired from the armor lords of Kaladim, as were our [drinking skills].");
	}
	elsif ($text=~/drinking skills/i) {
		quest::say("I learned the love of ale from the dwarves of Kaladim. Maybe someday I sall see you in the backroom at Fish's. If I do, don't forget to buy me an Ogre Swill.");
	}
	elsif ($text=~/husband/i) {
		quest::say("My husband is quite adept in the art of smithing. We set up shop here but a season ago. We hope to one day be as successful as [Brohan] Ironforge.");
	}
	elsif ($text=~/Brohan/i) {
		quest::say("Brohan Ironforge is the owner of Ironforge's in the northern part of Qeynos. He seems to be a good man with good skills. He also has the honor of siring the most handsome man in Qeynos. [Dren] is certainly quite an exceptional man.");
	}
	elsif ($text=~/Dren/i) {
		quest::say("Dren Ironforge is only the most eligible bachelor in Qeynos! Not only has he graced this city with his good looks and charm, he will someday inherit the Ironforge Estate. What a catch he would be!'");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
