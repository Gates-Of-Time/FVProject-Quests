sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("swats at the mosquitos flying around his head. 'Greetings. The sea wall is no place for you. Head back to the mainland. You may find a party of adventurers to join up with and venture into the outlands. I hear reports of [strange weapons] being looted. An adventurer could make quite a haul and you could help the outpost out by decreasing the goblin population.'");
	}
	elsif ($text=~/strange weapons/i) {
		quest::say("I have seen and heard many tales of weapons of strange design. I personally own a warhammer made by some other race, no doubt. I found it in an ancient city hidden deep in a forest that was crawling with giant raptors!! Many others in my unit found staffs, armor and blades, to say the least. Alas, we were unable to find the city in later expeditions.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
