sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Go to the taverns if you're looking for talk.");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/campnight.pl
	if ($signal == 1) {
		#:: Stop pathing grid 58
		quest::stop();
		#:: Missing equivalent perl function for lua e.self:MerchantCloseShop();
	}
	#:: Match signal "2" from qeynos/campday.pl
	elsif ($signal == 2) {
		#:: Start pathing on grid 58
		quest::start(58);
		#:: Missing equivalent perl function for lua e.self:MerchantOpenShop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
