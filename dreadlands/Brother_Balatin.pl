sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::me("Brother Balatin turns to you. A transparent human face materalizes upon the skull. As he speaks the smell of rotted rat corpses rushes into your face. You must fight the urge to vomit.");
		quest::say("What discipline do you follow?");
	}
	elsif ($text=~/lost circle/i) {
		quest::say("Then we are one. The rebirth of our circle shall start with you. I have waited decades for your arrival. You should seek the living brothers within Tunaria. When you have earned your garb then you will be ready for the [true drape].");
	}
	elsif ($text=~/true drape/i) {
		quest::say("Seek the broken flute of our master. Taken from us by the Iksar twins of Vistrei. To me they will come and to me your robe and you will come the dawning of the new brotherhood.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12979 - Metal Pipe (engraved 'Zan'), a 12980 - Metal Pipe (engraved 'Fi') and a 12256 - Robe of the Lost Circles
	if (plugin::takeItems(12979 => 1, 12980 => 1, 12256 => 1)) {
		quest::emote("holds his arms out and a fine robe materializes before your eyes. You grab it just in time to see the skeleton fade from existence.");
		#:: Give a 12970 - Robe of the Whistling Fists
		quest::summonitem(12970);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 12429 - Ancient Thin Flute
	elsif (plugin::takeItems(12429 => 1)) {
		#:: Spawn one and only one Dreadlands >> #Brother_Balatin (86155), with no grid or guildwar, at the specified location
		quest::unique_spawn(86155, 0, 0, $x, $y, $z, $h);
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
