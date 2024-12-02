sub EVENT_SAY
{
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		if($text=~/Hail/i)
		{
			quest::say("Welcome to freeport $name.");
		}
	}
}

sub EVENT_ITEM
{
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 29008 - bucket of water
		if(plugin::takeItems(29008 => 1))
		{
			quest::me("Joshua dips his emaciated hand into the bucket and brings the water to his mouth. As he does, you hear a soft thump from outside and notice that through the window his sister has collapsed. A glimmer enfolds her body, and you notice the water in Joshua's hand gleam a pure, bright light for a moment. 'Thank you, sir. I hope my sister returns soon. I feel better for some reason.");
			#:: Give a 29009 - bucket of pure water
			quest::summonitem(29009);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}