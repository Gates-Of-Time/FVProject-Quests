sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You want stuff? Or mebby you looks for a cure?");
	}
	elsif ($text=~/cough elixir/i) {
		quest::say("Ahh, you want me cure?! It cost lots of money, big big secret it is. Only us ogres know how to make. You wants? Only 1000 platinum! Make you feels bedder in no times!");
	}
}

sub EVENT_ITEM {
	#:: Match 1000 platinum
	if (plugin::takeCoin(0, 0, 0, 1000)) {
		quest::say("Okay, enjoy me drink!");
		#:: Give a 14365 - Cough Elixir
		quest::summonitem(14365);
		#:: Set factions
		quest::faction(236,3);		#:: + Dark Bargainers
		quest::faction(334,1);		#:: + Dreadguard Outer
		quest::faction(370,1);		#:: + Dreadguard Inner
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
