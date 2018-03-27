sub EVENT_SPAWN {
	quest::emote("runs up and steals the note.");
	quest::say("Aha!! Foolish Qeynite or whatever you call yourself!! I have found the note and now I shall take it to my superior!! Just try and catch me!!");
	quest::SetRunning(1);
	quest::moveto(73,16,-52,180);
	quest::settimer(1,120);
}

sub EVENT_TIMER {
	if ($timer == 1) {
		quest::stoptimer(1);
		quest::depop();
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Your name shall be added to the most wanted list of the Freeport Militia!!");
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
