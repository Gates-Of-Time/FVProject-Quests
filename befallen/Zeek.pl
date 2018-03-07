sub EVENT_SAY {
	#:: NPC For Bregna's Big Mistake Quest
	if ($text=~/hail/i) {
		quest::say("Ah, so many dead to destroy, so little time. What is it you want? You seek the [" . quest::saylink("potions") . "] perhaps?");
	}
	if ($text=~/potions/i) {
		quest::say("Give me the four clues.");
	}
}

sub EVENT_ITEM {
	#:: Match 18651 - Note to Troll, 18652 - First Riddle for the Troll, 18653 - Second Riddle for the Troll, 18654 - Third Riddle for the Troll
	if (plugin::check_handin(\%itemcount, 18651 => 1, 18652 => 1, 18653 => 1, 18654 => 1 )) {
		#:: Give item 13984 - Crate of Potions
		quest::summonitem(13984);
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
