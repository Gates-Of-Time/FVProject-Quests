sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. Please leave me be. I am studying several interesting essays on mana storage devices.");
	}
	elsif ($text=~/matter of the soul/i) {
		quest::say("I haven't heard anyone say that in a while. I am surprised that you want to follow the legacy of Azraxs. Take this book and write down the instructions on how to complete your soul trap and then give the book back to me.");
		#:: Give a 18956 - Tattered Book
		quest::summonitem(18956);
	}
}

sub EVENT_ITEM {
	#:: Match a 18956 - Tattered Book
	if (plugin::takeItems(18956 => 1)) {
		quest::say("Here is the first part. Now, go and gather the components from the list. Once your trap is ready, you will know what to do.");
		#:: Give a 17803 - Soul Trap
		quest::summonitem(17803);
		#:: Ding!
		quest::ding();
		#:: No exp / faction
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
