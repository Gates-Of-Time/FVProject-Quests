sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh, it's so nice to see you again $name. Why don't you have a look around and buy something nice for yourself today?");
	}
	elsif ($text=~/tax collection/i) {
		#:: Data bucket to verify quest has been started appropriately
		$key = $client->CharacterID() . "-tax-collection";
		#:: Match if the key exists
		if (quest::get_data($key)) {
			quest::say("Oh dear. We had forgotten about those pesky taxes. Here you go, $name. Sorry you had to come collect them. We will try to be on time from now on.");
			#:: Give a 13179 - Tassen's Tax Payment
			quest::summonitem(13179);
			#:: Set faction
			quest::faction(291,-1);		#:: - Merchants of Qeynos
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
