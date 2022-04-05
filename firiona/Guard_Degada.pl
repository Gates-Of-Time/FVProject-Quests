sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("has a katana slung to his back. 'Hail. Please keep moving. I am on duty and must keep my eye open for invaders.'");
	}
	elsif ($text=~/katana/i) {
		quest::emote("unsheaths the katana and holds it before your eyes. What light there is glints off the blade. It is made of fine craftsmanship, far beyond any you have ever seen. It is surely enchanted. 'When you can walk upon the searing ground and taunt death, then perhaps you also may claim one.'");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
