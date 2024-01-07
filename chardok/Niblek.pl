sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("I Niblek. You want something from Niblek?  Niblek find treasures in walls. Niblek like to trade treasures.");
  }
  if ($text=~/treasures/i) {
    quest::say("Niblek find piece of old jewelry! It very old, probably has much power!");
  }
  if ($text=~/want/i) {
    quest::say("Niblek likes shiny tings very much! You bring Niblek two shiny tings! Niblek has seen black sapphire and ruby! Niblek likes them very much!");
  }
}

sub EVENT_ITEM {
	#:: Match a 10036 - Black Sapphire, and a 10035 - Ruby
	if (plugin::takeItems(10036 => 1, 10035 => 1)) {
    quest::say("I much happy now!! I want shiny tings for long time! I give you ugly broken necklace now!");
		#:: Give a 19964 - Piece of a medallion
		quest::summonitem(19964);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
    	quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
