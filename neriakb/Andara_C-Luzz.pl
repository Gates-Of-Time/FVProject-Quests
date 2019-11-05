sub EVENT_ITEM {
#:: P	#:: Match a 19582 - Leatherfoot Short Bow, a 19583 - Lock of Zombie Hair, and a 16166 - Black Mamba Skin
#:: O	if (plugin::takeItems(19582 => 1, 19583 => 1, 16166 => 1)) {
#:: P		#:: Give a 19611 - Ebon Short Bow
#::		quest::summonitem(19611);
#:: E		#:: Ding!
#:: R		quest::ding();
#:: A		quest::say("Well done $name!  Use this with pride.");
#::		#:: Grant a moderate amount of experience
#::		quest::exp(1000);
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
