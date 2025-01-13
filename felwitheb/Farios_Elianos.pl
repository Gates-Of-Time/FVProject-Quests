sub EVENT_ITEM {
	#:: Match if faction is Amiable or better "Keepers of the Art"
	if ($faction <= 4) {
		#:: Match a 20457 - Crushed Pot
		if (plugin::takeItems(20457 => 1)) {
			quest::say("Eh? What is this? A cracked earthen pot? Why in the nine hells would I need a crushed pot? Perhaps I could use it to not hold water! Why did you even bother me with this? Are you mentally deficient? Apparently. Oh, well, you're just a servant boy. Well, then, we'll make you useful, if just a little. Take this shopping list and go get my groceries. Take it to Nora in the tavern. She'll know what I need.");
			#:: Give a 20458 - Grocery List
			quest::summonitem(20458);
			#:: Ding!
			quest::ding();
		}
		#:: Match a 20459 - Bag of Provisions
		elsif (plugin::takeItems(20459 => 1)) {
			quest::say("Ah, good. Here's a few copper and a receipt for services rendered. Now be off, I'm sure citizens across the land are in dire need of broken pots at right this moment.");
			#:: Give a 20474 - Receipt
			quest::summonitem(20474);
			#:: Ding!
			quest::ding();
			#:: Give exactly 3 platinum
			quest::givecash(3,0,0,0);
		}
	}
	else {
		quest::emote("will not take this item.");
 	}
	#:: Return unused items
	plugin::returnUnusedItems();
}