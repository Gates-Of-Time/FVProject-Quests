sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You'd better run along, if ya know what's best for ya!");
	}
	elsif ($text=~/lovely night for a stroll/i) {
		quest::say("Yes, it is a lovely night for a walk, especially with a good friend. Tell me, are you a [friend]?");
	}
	elsif ($text=~/friend/i) {
		quest::say("My memory is a bit fuzzy. If you are a friend, prove it to me.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13903 - Bent Playing Card
	if (plugin::takeItems(13903 => 1)) {
		quest::say("Ah, good, it seems we have much in common after all. Take this back to the Circle, before the city guards come nosing around over here.");
		#:: Give a 18722 - Sealed Note For Knargon
		quest::summonitem(18722);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(329, 5);		#:: + Carson McCabe
		quest::faction(336, 3);		#:: + Coalition of Tradefolk Underground
		quest::faction(304, -1);	#:: - Ring of Scale
		quest::faction(332, 5);		#:: + Highpass Guards
		quest::faction(331, 5);		#:: + Merchants of Highpass
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My friends are powerful and many... McCabe will show no mercy when avenging my death.");
}
