sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings and welcome to the Temple of Life! The healing of the world shall begin within. Let me know if you have seen a [new disciple of life]. I have a task which needs to be attended to.");
	}
	elsif ($text=~/disciple of life/i) {
		quest::say("It is good to meet a new follower of the Prime Healer. Remember that we must defend all life. Disease and poison are the enemies. Within Qeynos we work hand in hand with other guilds. I seek an acolyte to [deliver a flask].");
	}
	elsif ($text=~/deliver a flask/i) {
		quest::say("Our allies, the Knights of Thunder, have requested that we aid their followers in the Plains of Karana. We have a few young acolytes working there now. Take this blessed oil to Brother Estle. Follow the path to the plains. He shall be waiting for you by a tree alongside the path.");
		#:: Give a 13910 - Blessed Oil Flask
		quest::summonitem(13910);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
