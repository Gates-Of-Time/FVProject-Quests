sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Do you have any spare coppers for a thirsty soul?");
	}
	if ($text=~/lucan/i) {
		quest::say("That man is no just ruler. He has jailed me and my friend Zimel for merely begging.");
	}
	if ($text=~/tell me of zimel/i) {
		quest::say("What?! You know my friend Zimel?! I would like to speak of him, but my mouth is so parched. Maybe a fine grog would loosen my lips. I am uncertain which flavor shall do the trick.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13829 -  Drom's Champagne X4
	if (plugin::check_handin(\%itemcount, 13829 == 4)) {
		quest::say("Oooh!! That is the taste. My lips are almost loose. Maybe another will do the trick.");
	}
	#:: Turn in for 13829 -  Drom's Champagne x3
	if (plugin::check_handin(\%itemcount, 13829 == 3)) {
		quest::say("Oooh!! That is the taste. My lips are almost loose. Maybe another will do the trick.");
	}
	#:: Turn in for 13829 -  Drom's Champagne x2
	if (plugin::check_handin(\%itemcount, 13829 == 2)) {
		quest::say("Oooh!! That is the taste. My lips are almost loose. Maybe another will do the trick.");
	}	
	#:: Turn in for 13829 -  Drom's Champagne x1
	if (plugin::check_handin(\%itemcount, 13829 == 1)) {
		quest::say("Ahh!! That was good. Now where were we?. Oh yes. My friend Zimel is a fellow beggar. He was locked up in the arena. They were going to let him go when the Freeport Militia came for him. Ha!! He is crazy as a troll now. I took this blanket from his cell before I was released. I no longer need it and my guilt has reached its peak. I do not want crazy old Zimel to freeze. Perhaps you can return it to him.");
		#:: Give a small amount of xp
		quest::exp(10);
		#:: Ding!
		quest::ding();
		#:: Give item 12196- Bunker Cell #1 (Zimel's Blanket)
		quest::summonitem(12196);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
