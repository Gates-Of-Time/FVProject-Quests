sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name. Have you seen the fine clock in Merchant's Square? It was a gift from the gnomes of Ak'Anon to Antonius Bayle and the people of Qeynos.");
	}
}

sub EVENT_SIGNAL {
	if ($signal == 1) {
		#:: Signal sent from qeynos/Lieutenant_Arathur.pl
		quest::say("Yes, sir!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
