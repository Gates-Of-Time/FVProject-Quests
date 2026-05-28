sub EVENT_ITEM {
	#:: Match two 9504 - Funny Money
	if (plugin::takeItems(9504 => 2)) {
		#:: Give a random reward: 9505 - Red Gift Box, 9506 - Blue Gift Box, 9507 - Green Gift Box, 9508 - Black Gift Box, 9509 - Purple Gift Box, 9511 - White Gift Box, 9512 - Silver Gift Box, 9513 - Grey Gift Box, or 6877 - Frostmaidens Idol
		quest::summonitem(quest::ChooseRandom(9505, 9506, 9507, 9508, 9509, 9511, 9512, 9513, 6877));
		quest::emote("reaches into her satchel and pulls out a small box.");
		quest::say("Here ya go! Enjoy it. Come back soon. Just a warning though, I cant give you a box that you already have. There isn't enough for everyone you know!");
	}
	else {
		quest::say("I have no interest in this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
