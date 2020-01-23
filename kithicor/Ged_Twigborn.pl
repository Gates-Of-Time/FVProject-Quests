sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name. What brings you to this neck of the woods? You must have heard of my expert tanning skills. I craft some of the finest [skin garments] this side of Highpass Hold.");
	}
	elsif ($text=~/skin garments/i) {
		quest::say("Gloves are my specialty. I make four varieties: ratskin, wolfskin, bearskin, and my most sought after type, lionskin");
	}
	elsif ($text=~/lion/i) {
		quest::say("Interested in the best are you? Well it will cost you. In addition to a High Quality Lionskin, I require payment of 96 Gold Pieces for me to craft you my exquisite Lionskin Gloves. Search the Northern Plains of Karana for Highland Lions as their skins are the most supple");
	}
	elsif ($text=~/bear/i) {
		quest::say("Ah ... my bearskin gloves are the finest you will find anywhere. They will cost you 25 gold pieces and you also need to give me a high quality bear skin before I can get to work.");
	}
	elsif ($text=~/rat/i) {
		quest::say("Interested in some ratskin gloves, are you? Well, before I can start, I need you to provide me a giant rat pelt and 6 gold pieces. I need to make a living at this, after all");
	}
	elsif ($text=~/wolf/i) {
		quest::say("Wolfskin gloves?  Those will cost you 13 gold pieces and you need to bring me a high quality wolf skin as well.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13766 - High Quality Lion Skin and 96 gold pieces
	if (plugin::takeItemsCoin(0, 0, 96, 0, 13766 => 1)) {
		quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
		#:: Give a 2315 - Lionskin Gloves
		quest::summonitem(2315);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 13752 - High Quality Bear Skin and 25 gold pieces
	elsif (plugin::takeItemsCoin(0, 0, 25, 0, 13752 => 1)) {
		quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
		#:: Give a 2314 - Bearskin Gloves
		quest::summonitem(2314);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 13054 - Giant Rat Pelt and 6 gold pieces
	elsif (plugin::takeItemsCoin(0, 0, 6, 0, 13054 => 1)) {
		quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
		#:: Give a 2312 - Ratskin Gloves
		quest::summonitem(2312);
		#:: Ding!
		quest::ding();
	}
	#:: Match a 13755 - High Quality Wolf Skin and 13 gold pieces
	elsif (plugin::takeItemsCoin(0, 0, 13, 0, 13755 => 1)) {
		quest::say("Ok! Let me see here.. Hmmm.. Oh, excellent.. Here you go. Some of my finest work, if I must say so myself.");
		#:: Give a 2313 - Wolfskin Gloves
		quest::summonitem(2313);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
