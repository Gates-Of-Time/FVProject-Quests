sub EVENT_ITEM {
	#:: Match a 20879 - Note of Credit
	if (plugin::takeItems(20879 => 1)) {
		quest::say("Ah, nice of you to come and pick this up for Ganelorn! I know he is a busy fellow. I certainly hope that his girlfriend will like this gift.");
		#:: Give a 20880 - Gift
		quest::summonitem(20880);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
