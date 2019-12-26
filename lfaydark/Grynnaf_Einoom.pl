sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("looks at $name and wonders if he is looking for the Scalekeeper?");
	}
	elsif ($text=~/scalekeeper/i) {
		quest::say("Ahh...Ye be lookin' for Nortlav then. Nortlav is a strong fella. Ye dunna want to mess with the likes of him. He's known as a dragonslayer. I heard that he keeps the scales of the dragons he's slain. Yer not impressed eh? All the dragons he's killed have died by the blade of a [rusty weapon].");
	}
	elsif ($text=~/rusty weapon/i) {
		quest::say("Aye. I dunno know why he does what he does. But every dragon he's killed died by the likes of a rusty weapon. I dunno where he is now. but I heard he can be found in the depths of Norrath. surrounded by darkness.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
