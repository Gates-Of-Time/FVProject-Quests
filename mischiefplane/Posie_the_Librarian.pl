sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("SSH! do not disturb the library! It's $race like you who have ruined your own books, you won't ruin mine!");
	}
}

sub EVENT_ITEM {
	#:: Match a 9510 - Library Card
	if (plugin::takeItems(9510 => 1)) {
		#:: Give a 17325 - Book of Mischief
		quest::summonitem(17325);
		quest::say("Ahh, you brought your card. Let's see here. $name is it? Here's the only book we have stocked at the moment. It's missing the chapter on wealth but there's an excellent story about melting your clothing in a pot on page 11. It's a one of a kind story written completely in invisible ink. Enjoy!");
	}
	else {
		quest::say("I have no interest in this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
