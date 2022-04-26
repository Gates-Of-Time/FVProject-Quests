sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("'Hail, adventurer!! Stand tall and fight for the forest folk and all good races of Norrath. We shall claim this land for the kingdom of Thex! My warriors shall not fail. Already we patrol deep in the wilds of Kunark. We welcome all mercenaries and urge adventurers to [join the defense of the outpost].");
	}
	elsif ($text=~/join the defense of the outpost/i) {
		quest::say("I salute you!! Join the hunt. Reports from the front line indicate a rise in the drolvarg population. Abandon your fear and slay these beasts for the greater good. Already, they have taken far too many lives, even my sibling's!! I shall pay you your wages upon the return of four drolvarg teeth.");
	} 
	elsif($text=~/sibling/i){
		quest::emote("appears saddened by the mention of his sibling. 'My brother Marltek has been missing for quite some time. I found coarse Drolvarg hair inside his tent which leads me to believe he has become a meal for the dogs. CURSE THE EVIL DOGS!! I shall see them all dead!!'");
	}
}

sub EVENT_ITEM {
	#:: Match four 12977 - Canine
	if (plugin::takeItems(12977 => 4)) {	
		quest::emote("tosses the teeth into a very large cask full of similar teeth. 'Fine work, $name. I wish all my own troops showed the same tenacity. I salute you. This will keep you well fed during your long patrols. Use your wages to better equip yourself. Continue the fight!! The General is pleased.'");
		#:: Give a 13155 - Elven Trail Mix
		quest::summonitem(13155);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);		#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);		#:: + Emerald Warriors
		quest::faction(312, 3);		#:: + Storm Guard
		quest::faction(441, -1);	#:: - Legion of Cabilis
		quest::faction(313, -1);	#:: - Pirates of Gunthak
		#:: Grant a large amount of experience
		quest::exp(5000);
		#:: Create a hash for storing cash - 800 to 1200cp
		my %cash = plugin::RandomCash(800, 1200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match four 18076 - Bloodsoaked Note
	elsif (plugin::takeItems(18076 => 1)) {
		quest::emote ("nearly faints after reading the letter. 'Dear Marltek!! I shall miss you. There is more evil in this land!! Madness beyond description. Thank you $name. You put my soul at ease and give me new direction. Please accept my brothers blade. He found it in the wilds. May you use it to slay many Drolvarg!!'");
		#:: Give a 12978 - Glaive of Marltek
		quest::summonitem(12978);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);		#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);		#:: + Emerald Warriors
		quest::faction(312, 3);		#:: + Storm Guard
		quest::faction(441, -1);	#:: - Legion of Cabilis
		quest::faction(313, -1);	#:: - Pirates of Gunthak
		#:: Grant a large amount of experience
		quest::exp(5000);
		#:: Create a hash for storing cash - 800 to 1200cp
		my %cash = plugin::RandomCash(800, 1200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
