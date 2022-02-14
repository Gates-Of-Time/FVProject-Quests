sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("displays a fine selection of weapons for your perusal.  'Greetings, O ye of heavy coin! Please examine my wares closely. Only the finest weapons will protect you in the outlands.'");
	}
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		if ($text=~/sisters of scale/i) {
			quest::say("Looking for the skull I had for sale? I am afraid I sold it to a staunch lizard champion. I would gladly give you his name if you would do me a [slight favor].");
		}
		elsif ($text=~/slight favor/i) {
			quest::say("The lake garrison has requested that I work on a helm similar to the ones worn by sarnak dragoons. The problem is.. I need one to examine. You go get me one and I will tell you who purchased the skull.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Indifferent or better
	if ($faction <= 5) {
		#:: Match a 12761 - Sarnak Dragoon Helm
		if (plugin::takeItems(12761 => 1)) {
			quest::say("Uhh. Thanks. I sort of told the lizard who bought the skull that you were asking for him, and, well, he was kinda mad, and... $name, meet Bruiser.");
			#:: Spawn a Lake of Ill Omen >> Bruiser_Noz (85226)
			quest::unique_spawn(85226, 0, 0, $x + 5, $y, $z, $h);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /lakeofillomen/Bruiser_Noz.pl
	if ($signal == 1) {
		quest::emote("shakes with fear. A dark stain begins to spread across the front of his trousers. 'Ye.. Ye.. Yes.. Yes, Bruiser.");
		#:: Send a sign '1' to Lake of Ill Omen >> Bruiser_Noz (85226) with a 10 second delay
		quest::signalwith(85226, 1, 10);
	}
}
