sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("turns his frown around and begins to smile. 'Oh!! Hello. It has been quite some time that someone has been polite and greeted me. Most adventurers are quite rude. To think I gave up my [hobby] to work day and night here!!'");
	}
	elsif ($text=~/hobby/i) {
		quest::say("I used to collect rare coins and gems. I came to Firiona Vie to do just that, but I never have the time to [collect rare coins] when I am always here working.");
	}
	elsif ($text=~/collect rare coins/i) {
		quest::say("If you want to help, you can begin by replacing my prized Star of Odus which was taken from my vault when I stepped out to dine. Do so, and I may trust you to collect coins. I will also reward you with an item a composer left here.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10059 - Star of Odus
	if (plugin::takeItems(10059 => 1)) {
		quest::say("Thank you!! I never could have gone to Odus to replace this. Perhaps now you can collect some rare coins. Here. I need a Torsis Ton, Royal Crown of Dalnir, Terraz Ton, Veksar Gran, Danak Gran and Ik Gran. Combine them with the box and return it to me.")
		#:: Give a 17045 - Tin Box
		quest::summonitem(17045);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12829 - Tin Box
	elsif (plugin::takeItems(12829 => 1)) {
		#:: Give a 12940 - Nostrolo Tambourine
		quest::summonitem(12940);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
