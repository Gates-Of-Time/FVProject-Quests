sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome, welcome. Buy some gems or sell some gems. I have flawless merchandise. I have the finest miners scouring Kunark for it's precious gems. Kunark has many rare minerals. The gnomes even say some of the rocks are from high up in the sky. From an orb floating so far away we cannot see it. Bah!! Those gnomes are insane.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10033 - Fire Emerald
	if (plugin::takeItems(10033 => 1)) {
		quest::emote("examines the fire emerald, reaches into his pouch and hands you another. 'There you go, it doesn't look special but it is. If you don't believe me I'll take another look at it. Just remember this special fire emerald only has one purpose!'");
		#:: Give a 10013 - Special Fire Emerald
		quest::summonitem(10013);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
