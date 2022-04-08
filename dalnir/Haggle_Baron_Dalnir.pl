sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::say("I have little time to speak. I can feel this facade weakening already. A Scaled Mystic came to me during my time of torment. He spoke to me. He said that a new time was hiding behind the darkness of the horizon. You seek Master Rile's Khukri. I can diagram it for you... Arrrgh! I feel the pull of torment upon me! Return to me with a piece of parchment, a quill, and Rile's Shattered Blade. Use your mirror again to bring me back and I will try to remember the design. Please be quick!");
	}
}

sub EVENT_ITEM {
	#:: Match a 13051 - Quill, a 13063 - Piece of Parchment and a 3888 - Rile's Shattered Blade
	if (plugin::takeItems(13051 => 1, 13063 => 1, 3888 => 1)) {
		quest::emote("stares at the broken blade for some time. After a few moments of studying, the apparition begins to draw and scribble on the parchment. He works with amazing speed as the memories from his past flood from his quill. The diagrams and runes that etch the surface of the parchment begin to glow. The legendary Haggle Baron rolls the parchment and hands it to you. Smiling, he bows deeply and quickly fades away.");
		#:: Give a 3890 - Greenmist Design Pattern
		quest::summonitem(3890);
		#:: Ding!
		quest::ding();
		#:: Depop without spawn timer active
		quest::depop();
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}