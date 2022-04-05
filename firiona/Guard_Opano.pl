sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("has large scars on the right side of his face. He is missing one eye and wears no patch. 'Another adventurer? If you think you will find fame and fortune in this land then you are sadly mistaken. Only death awaits you out there in the wilds of Kunark. Just when you think you are raiding a [tomb] you will find it becomes your resting place.'");
	}
	elsif ($text=~/tomb/i) {
		quest::say("Do not contemplate raiding tombs. I was once sent with a unit to find a relative of a human noble lost within Kunark. With the help of the Feir'Dal trackers we found them within a hidden tomb. It was filled with [great evil] and [great deceit].");
	}
	elsif ($text=~/great deceit/i) {
		quest::say("Within that tomb laid a pitfall to doom. We found ourselves trapped. We had to lurk in the dark halls. We found death. Every time hope sprang forth we would find ourselves trapped again. Be it by pitfall, hidden passages or locked doors,.. hope fooled us every time.");
	}
	elsif ($text=~/great evil/i) {
		quest::emote("closes his eyes and shutters. 'Great evil. Trapped souls and dragon men. Twenty soldiers went in. Two came out. Some were swallowed up by oozing pools of slime and others were hacked to pieces by the [dragon men].'");
	}
	elsif ($text=~/dragon men/i) {
		quest::say("I have heard some casters at the tavern refer to them as sarnak. I believe this is what I encountered once within a hidden [tomb]. They are tall and have talons like razors. They are most certainly intelligent, they had powers to cast and the tools of war. I hope to never cross their path again.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
