sub EVENT_ITEM {
	#:: Match four 10033 - Fire Emerald
	if (plugin::takeItems(10033 => 1)) {
    quest::emote("examines the fire emerald, reaches into his pouch and hands you another.");
    quest::say("There you go, it doesn't look special but it is. If you don't believe me I'll take another look at it. Just remember this special fire emerald only has one purpose!");
    #:: Give a 10013 - Special Fire Emerald
		quest::summonitem(10013);
		#:: Ding!
		quest::ding();
		}
  else {
    quest::say("I have no need for this, $name.");
  }

	#:: Return unused items
	plugin::returnUnusedItems();
}


