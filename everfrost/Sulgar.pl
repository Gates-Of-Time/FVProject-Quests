sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. I am searching for the [" . quest::saylink("wheel of Tarton") . "]. If you will assist me I will provide you with [" . quest::saylink("runes") . "] to create a powerful spell.");
	}
	if ($text=~/runes/i) {
		quest::say("I have these runes, Rune of Frost and Rune of the Astral, which can be combined to produce a powerful spell that can call down destruction from the heavens. I will give them to you in exchange for the Staff of the Wheel and Star of Eyes.");
	}
	if ($text=~/wheel of Tarton/i) {
		quest::say("The wheel was broken into several pieces and scattered throughout the world. This book will give you clues as to their whereabouts. Once you gather all the pieces, they can be reassembled in a special [" . quest::saylink("case") . "].");
		#:: Give 18031 - Tome of the Wheel
		quest::summonitem(18031);
	}
	if ($text=~/case/i) {
		quest::say("You can use this case to reassemble the wheel. It has been infused with energy to combine the spokes. You will need to work quickly though or it will consume itself.");
		#:: Give 17510 - Glowing Chest (quest container)
		quest::summonitem(17510);
	}
}

sub EVENT_ITEM {
	#:: Match 14360 - Staff of the Wheel and 14361 - Star of Eyes
	if (plugin::check_handin(\%itemcount, 14360 => 1, 14361 => 1)) {
		quest::say("Wonderful, you have brought me the Wheel. Here is the reward I promised you.");
		#:: Give 11880 - Rune of Frost
		quest::summonitem(11880);
		#:: Give 11881 - Rune of the Astral
		quest::summonitem(11881);
		quest::ding();
		quest::exp(100000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
