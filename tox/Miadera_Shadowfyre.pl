sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ahhhahahaha! The terror that lays over this city like a blanket tingles my bones with vigor. I seek a fellow apostle of Cazic-Thule to assist me in the [" . quest::saylink("summoning of Terror") . "].");
	}
	if ($text=~/summoning of terror/i) {
		quest::say("It will be a frightfully fulfilling summons. To do this, I need an eye of urd, some basalt drake scales, the lens of Lord Soptyvr, and a lock of widowmistress hair.");
	}
}

sub EVENT_ITEM {
	#:: Match a 10523 - Eye of Urd, 19032 - Basalt Drake Scales, 14110 - Lens of Lord Soptyvr, 14109 - Widowmistress Hair
	if (plugin::check_handin(\%itemcount, 10523 => 1, 19032 => 1, 14110 => 1, 14109 => 1)) {
		quest::say("Yes, this is what I require to summon Terror!"); #Text made up
		quest::emote("begins speaking an incantation. 'Take this mask as your reward for helping me.'");
		#:: Give a 14106 - Mundane Mask
		quest::summonitem(14106);
		#quest::spawn2(?????); #Avatar of Terror
	}
	#:: Return unused items
	plugin::returnitems(\%itemcount);
}
