sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Can you -hic- . . . spare some copper or -hic- . . . silver? I just . . . -Hic- . . . need some change to buy something to drin . . Er . . Eat . -Hic-");
	}
	#:: Match if faction is Indifferent or better
	if ($faction < 5) {
		if ($text=~/tandan nybright/i) {
			quest::say("How did you know my name? You must be from Felwithe. Hic.. Excuse my condition. I am not the man I was. I have had a [shocking experience].");
		}
		elsif ($text=~/shocking experience/i) {
			quest::say("My daughters have become blood thirsty bandits. They went off to visit Antonica and when they returned they became bandits. They now attack every poor traveler who happens upon them. They have disgraced the name of Nybright. Will you [hunt the Nybright Sisters]or is this not to your liking?");
		}
		elsif ($text=~/hunt/i) {
			quest::say("I am most thankful. Many adventurers would not help me with this matter. Go and seek out the Nybright sisters. I gave all four of them a Personalized Necklace. Return them all to me when the deed is done. May the Tribunal watch over you.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13035 - Elven Wine
	if (plugin::takeItems(13035 => 1)) {
		quest::say("Oh.. .. Thank you!! Oh, what has become of me?! Look at me!! I was great once. I wish I never had that shocking experience.");
		#:: Ding!
		quest::ding();
		#:: Grants a small amount of experience
		quest::exp(150);
	}
	#:: Match a 13347 - Dull Pearl Necklace, 13348 - Dull Pearl Necklace, 13349 - Dull Pearl Necklace, 13350 - Dull Pearl Necklace
	elsif (plugin::takeItems(13347 => 1, 13348 => 1, 13349 => 1, 13350 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction < 5) {
			quest::say("This is a sad day, but it was the just thing to do. The Nybright name will no longer be tarnished. Here you are my friend. This is a bit uncared for, but it is yours. My warrior days are over. Now go. I must be alone.");
			#:: Give a random item: 2314 - Bearskin Gloves, 2007 - Leather Belt, 2005 - Leather Shoulderpads  (later also has the chance to give 23359 - Targ Shield)
			quest::summonitem(quest::ChooseRandom(2314, 2007, 2005));
			#:: Ding!
			quest::ding();
			#:: Grant a small amount of experience
			quest::exp(300);
			#:: Set faction
			quest::faction(5001, 20);		#:: + Anti-Mage
			quest::faction(226, 20);		#:: + Clerics of Tunare
			quest::faction(279, 20);	#:: + King Tearis Thex
		}
		else {
			quest::say("No thanks.");
			#:: Return a 13347 - Dull Pearl Necklace, 13348 - Dull Pearl Necklace, 13349 - Dull Pearl Necklace, 13350 - Dull Pearl Necklace
			quest::summonitem(13347);
			quest::summonitem(13348);
			quest::summonitem(13349);
			quest::summonitem(13350);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_ARRIVE {
	if (($wp == 3) || ($wp == 9) || ($wp == 15) || ($wp == 24) || ($wp == 26) || ($wp == 33)) {
		quest::say("Please.. Can anyone spare some coppers? <Hic>.. Anyone?");
	}
}
