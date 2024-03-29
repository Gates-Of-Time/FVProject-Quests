sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Some cracked old bone's, two zombie flesh, and a salt minnow make up the rest. Throw inside a skull and mix, and I would have a delightful dish. But with no eye's I have no sight to make Kurn's delicious delight. And if I could I would not eat without a tongue behind my teeth.");
	} 
}

sub EVENT_ITEM {
	#:: Match a 12401 - Glowing Skull
	if (plugin::takeItems(12401 => 1)) {
		quest::say("The cook's bone's crack as he reaches out to take the skull from your hand's. A voice in your mind say's, Thank you. Now I can leave this dreadful place. Please take this as I no longer have any use for it. The cook places the skull back in your hand's before collapsing into a lifeless pile of bone's.");
		#:: Give a 59526 - The Skull of Torture
		quest::summonitem(59526);
		#:: Ding!
		quest::ding();
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
