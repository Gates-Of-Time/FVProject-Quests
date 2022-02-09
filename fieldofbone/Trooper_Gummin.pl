sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Beware the bone field beyond the path. It is said that the bones of a thousand fallen warriors walk its grounds at night.");
	}
	elsif ($text=~/sign the restraining order/i) {
		quest::say("Blast! The masters have condemned me to a life of sobriety and bloodshed! At least I still have bloodshed. But I would like one last drink. I would like a bottle of Legion Lager from Cabilis. Bring me the lager and the legion order and then I shall sign it.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18242 - Legion Order, and a 12463 - Legion Lager
	if (plugin::takeItems(18242 => 1, 12463 => 1)) {
		quest::emote("slowly signs the order. '...Love, Innoruuk. There you go. Now run along. Let me enjoy my last brew alone.'");
		#:: Give a 18243 - Legion Order
		quest::summonitem(18243);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 18242 - Legion Order
	elsif (plugin::takeItems(18242 => 1)) {
		quest::say("What?! I need the Legion Lager and the legion order.");
		#:: Give a 18242 - Legion Order
		quest::summonitem(18242);
	}
	#:: Match a 12463 - Legion Lager
	elsif (plugin::takeItems(12463 => 1)) {
		quest::say("What?! I need the Legion Lager and the legion order.");
		#:: Give a 12463 - Legion Lager
		quest::summonitem(12463);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
