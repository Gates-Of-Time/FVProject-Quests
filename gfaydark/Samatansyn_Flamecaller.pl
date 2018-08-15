sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("It is a pleasure to meet you $name, I am Samatansyn Flamecaller, Warder of Tunare and Guildmaster of Faydarks Champions. I have studied here for many of my years until recently when I took up teaching.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
