sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! Do you by chance bring news from the North? I sure do miss the cold. It is just a bit too warm for me down here. Well, I wish you the best of luck in your travels. Tomorrow is a new day and I am off in search of [new writings] to take back to the Tribunal.");
	}
	elsif ($text=~/new writings/i) {
		quest::say("There have been tales of new writings being found in some of the ancient ruins that abound outside of this outpost. These writings will be very valuable to my church. The sooner I can return with the writings, the sooner the Tribunal can put the teachings to work. I am always in need of aides so if [you want to help], just say so.");
	}
	elsif ($text=~/i want to help/i) {
		quest::say("We won't be traveling together, but here is what I need. There are four writings that still elude me. Return one of these and I'll spare one of the four extra writings I have. I am looking for the writings called Talisman of Jasinth, Spirit of Scale, Cripple, and Cannibalize III. Be off, and may your travels be safe!");
	}
}

sub EVENT_ITEM {
	#:: Match a 19269 - Spell: Cripple
	if (plugin::takeItems(19269 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19238 - Spell: Spirit of Scale
	elsif (plugin::takeItems(19238 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19264 - Spell: Talisman of Jasinth
	elsif (plugin::takeItems(19264 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Match a 19272 - Spell: Cannibalize III
	elsif (plugin::takeItems(19272 => 1)) {
		quest::say("Here is the scroll that I promised. We have both gained much knowledge today. I hope to do business with you again soon. Farewell!");
		#:: Choose a random 19267 - Spell: Talisman of Shadoo, 19271 - Spell: Shroud of the Spirits, 19274 - Spell: Torrent of Poison or 19266 - Spell: Insidious Decay
		quest::summonitem(quest::ChooseRandom(19267, 19271, 19274, 19266));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(1000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
