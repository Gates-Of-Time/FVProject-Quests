sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Please, leave me be alone. I have such sorrow in my heart.. I wish to be alone with my thoughts.");
	}
	elsif ($text=~/sorrow/i) {
		quest::say("My daughter Tayla has left and I fear she will not return. If only I could find someone.. Hey, would you like to do a favor for an old man or are you too busy?");
	}
	elsif ($text=~/tayla/i) {
		quest::say("Tayla is my oldest and youngest daughter. Unlike the rest she is of a different mother. She is part elven. She appears to be physicaly younger than the rest, but she has spent more years as my daughter than all the others. Tayla is from my first marriage to Weleana.");
	}
	elsif ($text=~/where/i) {
		quest::say("My daughters have informed me that Tayla has runaway to live with the elves of Kelethin. Apparently life among the human citizens of Qeynos was not very kind to her. I wish her well, but I wish I knew she was safe.");
	}
	elsif ($text=~/hurrieta/i) {
		quest::say("Hurrieta is a good woman. She has a bit repulsed that I once was married to a wood elf. She got over that I believe. We had four children together. The children seem quite accepting of Tayla, even though she is a half elf.");
	}
	elsif ($text=~/favor/i) {
		quest::say("Good. Please find my daughter, Tayla Ironforge. Bring me proof that she is safe. She was last seen near Nektulos. I am a fine blacksmith and I shall give you a worthy gift if you do this for me.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18863 - Sealed Letter
	if (plugin::takeItems(18863 => 1)) {
		quest::say("Oh! thank you! Now I know she is safe. My sweet Tayla. Here is your reward, as promised. A hero such as yourself deserves a weapon with which to uphold your noble values.");
		#:: Give a random reward: 5303 - Combine Long Sword, 5304 - Combine Two Handed Sword, 5305 - Combine Short Sword, 5313 - Combine Scimitar, 6303 - Combine Warhammer, 6311 - Combine Morning Star, 6312 - Combine Great Staff, 7300 - Combine Dagger, 7301 - Combine Spear, 7311 - Combine Rapier, 7499 - Combine Gladius
		quest::summonitem(quest::ChooseRandom(5303, 5304, 5305, 5313, 6303, 6311, 6312, 7300, 7301, 7311, 7499));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 50);		#:: + Merchants of Qeynos
		quest::faction(223, -10);		#:: - Circle Of Unseen Hands
		quest::faction(219, 7);			#:: + Antonius Bayle
		quest::faction(229, 5);			#:: + Coalition of Tradefolk
		quest::faction(262, 10);		#:: + Guards of Qeynos
		#:: Grant a moderate amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
