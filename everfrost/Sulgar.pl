sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, traveler! Would you happen to know the location of any of the spokes of [" . quest::saylink("Tarton's Wheel") . "]?' ");
	}
	if ($text=~/Tarton's Wheel/i) {
		quest::say("Tarton's Wheel was a device that Tarton constructed to let him travel through the planes. If you are [" . quest::saylink("interested") . "] in helping me reassemble it, I will reward you well.");
	}	
	if ($text=~/intersted/i) {
		quest::say("Tarton's Wheel was split into 10 separate pieces. These pieces were then scattered across the face of Norrath. I have a [" . quest::saylink("tome") . "] that I can give you, detailing the wheel of Tarton, as well as a [" . quest::saylink("wheel case") . "] that you can have when you are ready to assemble the pieces.");
	}
	if ($text=~/tome/i) {
		quest::say("This tome details the wheel of Tarton, and the lore on where the pieces of it may be found. Use it in good faith.");		
		#:: Give 18031 - Tome of the Wheel
		quest::summonitem(18031);
	}
	if ($text=~/wheel case/i) {
		quest::say("I will lend you this wheel case - put the ten spokes of the wheel in it when you have collected them. I did say lend, however. I shall need the case back. Once you have constructed the Staff of the Wheel and the Star of Eyes, I will trade you them for two magical runes I have found useful in my research.' ");
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
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(100000);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}

# Converted to Perl by SS
