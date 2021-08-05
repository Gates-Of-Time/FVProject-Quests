sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Good day, $name!  Have you visited Taria already? Taria does indeed make some of the finest statuettes in all the land.  I fear, though, that she has lost her faith.  She used to make idols depicting our Lord of Fear.  Now she dabbles in the creation of [other idols]!");
	}
	elsif ($text=~/other idols/i){
		quest::say("Well, just the other day, she was commissioned to create a representation of Tunare for Iva down at the Bakery.  I've always known that Iva was a bit odd, but that is just downright strange!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
