sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. This is a grand city. I plan to make much profit here.");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/campnight.pl
	if ($signal == 1) {
		#:: Stop pathing grid 57
		quest::stop();
		#:: Missing equivalent perl function for lua e.self:MerchantCloseShop();
	}
	#:: Match signal "2" from qeynos/campday.pl
	elsif ($signal == 2) {
		#:: Start pathing on grid 57
		quest::start(57);
		#:: Missing equivalent perl function for lua e.self:MerchantOpenShop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
