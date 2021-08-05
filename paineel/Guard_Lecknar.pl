sub EVENT_SAY {
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		if ($text=~/hail/i) {
			quest::say("Uggg. You needz [keyz]? Rrrrrrr.");
		}
		elsif ($text=~/key/i) {
			quest::say("Uggggg. Take dis keyz.");
			#:: Give a 6378 - Bone Crafted Key
			quest::summonitem(6378);
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
