sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("He.. Hello. Wou.. would you like to buy something? Be quick or [" . quest::saylink("Kizdean") . "] will return!");
	}
	if ($text=~/Kizdean/i) {
		quest::say("Sshhh..Please..save me. Get..rid..of..him.");
	}
}

sub EVENT_ITEM {
	#:: Match 17931 - Sparkle
	if (plugin::check_handin(\%itemcount, 17931 => 1)) {
		quest::say("Oh!!! Thank you. You are my hero. I have been held captive by that horrid dark elf for weeks. Please take this. It was the key to a gem case which was stolen from me by an unseen rogue. If you find the gem case you can take it and the key to the original craftsman. He can open it with only two keys.");
		quest::ding();
		quest::exp(15000);
		#:: Summon 12352 - Tiny Key
		quest::summonitem(12352);
	}
	plugin::return_items(\%itemcount);
}
