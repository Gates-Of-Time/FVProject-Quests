sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! We've got the best prices in town..  No need to shop around..  Heh, heh. I think I'll make that my new slogan!");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/campnight.pl
	if ($signal == 1) {
		#:: Stop pathing grid 61
		quest::stop();
		#:: Missing equivalent perl function for lua e.self:MerchantCloseShop();
	}
	#:: Match signal "2" from qeynos/campday.pl
	elsif ($signal == 2) {
		#:: Start pathing on grid 61
		quest::start(61);
		#:: Missing equivalent perl function for lua e.self:MerchantOpenShop();
	}
	#:: Match signal "3" from qeynos/Kazlo_Naedra.pl
	elsif ($signal == 3) {
		quest::say("Heh.. Why don't you try Freeport.. or Erudin.. ANYwhere but here!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
