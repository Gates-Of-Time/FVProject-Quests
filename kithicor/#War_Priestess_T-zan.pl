sub EVENT_SAY {
  	quest::emote("ignores you.");
}

sub EVENT_ITEM {
	if(plugin::takeItems(28057 => 1)) {
		quest::say("The General will take care of you!");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(500);
		#:: Spawn one and only one a Kithicor >> General_V`ghera (20205), without grid or guild war, at the current location
		quest::unique_spawn(20205,0,0,2316,797,275,193.5);
	}
	else 
	{
		quest::emote("will not accept this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}