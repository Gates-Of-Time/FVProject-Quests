sub EVENT_SAY {
	if($class eq "Warrior") {
		if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
			if($text=~/Hail/i)   {
				quest::emote("looks up from his forge and says, 'Hello there, can I help you?' Your eyes are drawn to an extremely large [red sword Scabbard] strapped to his back with no sword in it.");
				quest::say("I said, can I help you or do you need help from [Wenden]?");
			}
			if($text=~/Wenden/i) {
				quest::emote("points to the other side of the forge and says, 'Wenden is my partner. He is standing right over there. If it is a question about a weapon, he will probably have the answers.'");
			}
			if($text=~/red sword Scabbard/i) {
				quest::emote("turns to look at you and says, 'It is a family heirloom. I might tell you the story behind it if you do me a little [favor].'");
			}
			if($text=~/favor/i) {
				quest::say("An associate of mine is wandering somewhere in the Feerrott. His name is Oknoggin Stonesmacker. If you will deliver this note to him, I would appreciate it.");
				#:: Give a 20673 - Wax Sealed Note
				quest::summonitem(20673);
			}
		}
	}
}


sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 20674 - Tiny Lute
		if (plugin::takeItems(20674 => 1)) { 
			quest::say("Thank you for delivering the note to my associate. Take this book - It will tell you A little of the history of the old scabbard. If you would like to own the scabbard, seek out my younger brother Tenal and give him the book.");
			#:: Give a 18083 - Redblade's Legacy
			quest::summonitem(18083);
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(1000);
		}
		#:: Match a 20684 - Tenal's Note to Kargek and a 20679 - Spiroc Wingblade
		elsif (plugin::takeItems(20684 => 1, 20679 => 1)) {
			quest::say("What is this? A note from my brother? Thank you for the gift as well.");
			quest::emote("reads the note and hands you the red scabbard. Your mind is filled with the sound of battle and a voice. 'Place the ancient sword blade, ancient blade, finely crafted dragon head hilt, and the jeweled dragon head hilt into the scabbard to receive your rewards. If you think you are worthy, place your rewards into the scabbard and see what havoc you can unleash on the world.'");
			quest::emote("addresses you as you turn to leave. 'One more thing. Gartrog over there has told me of a great discovery. Seems there are all sorts of stones being found in the recently discovered lost dungeons scattered around Antonica.  The Wayfarer's Brotherhood has found a way to make items even more powerful by using the stones with existing items.'");
			#:: Give a 17859 - Red Scabbard
			quest::summonitem(17859);
			#:: Ding!
			quest::ding();
			#:: Grant a huge amount of experience
			quest::exp(1000000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
