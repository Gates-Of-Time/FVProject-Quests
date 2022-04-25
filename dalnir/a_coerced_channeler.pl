sub EVENT_DEATH_COMPLETE {
  if($text=~/greenmist/i) {
    quest::shout("the river of Xinth...");
  }
}

sub EVENT_ITEM {
	#:: Match a 12752 - Potion of Swirling Liquid
	if (plugin::takeItems(12752 => 1)) {
		quest::shout("Go to where the pines have been smashed. Must reach great heights!");
		#:: Give a 12750 - Iksar Skull (Engraving ' :-) ')
		quest::summonitem(12750);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}