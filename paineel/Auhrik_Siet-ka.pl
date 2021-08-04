sub EVENT_SAY {
	if ($text=~/understand common/i) {
		quest::say("Of course you do. Now, listen carefully. It may be too much for your feeble mind to gather all at once, and I hate to repeat myself. Bring me one bat wing, one rat ear, one snake egg, and one fire beetle eye. Take this bag, and make sure it's sealed before you return it to me. Snake eggs spoil. Now, quit staring at me with your jaw hanging open like a dead codfish. I would have mistaken you for one, but dead codfish smell better. Haha!");
		#:: Give a 17802 - Small Sealable Bag
		quest::summonitem(17802);
	}
}

sub EVENT_ITEM {
	#:: Match a 14041 - A Rolled Up Note
	if (plugin::takeItems(14041 => 1)) {
		quest::say("Why are you giving this to me? Oh I see. I forgot that rats don't know how to read. Haha! Well, then. I shall read it for you. You do [understand common] don't you? Haha.");
	}
	#:: Match a 12993 - Small Sealed Bag
	elsif (plugin::takeItems(12993 => 1)) {
		quest::say("Well, that wasn't so hard, was it? I suppose I must now thank you for your services. Now, leave me to my studies. I would tell you what I needed the items for, but that would just cloud your fragile little mind. Off with thee!");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 5 to 10cp
		my %cash = plugin::RandomCash(5, 10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
