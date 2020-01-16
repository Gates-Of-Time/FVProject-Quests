sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, friend. Have a drink. I have some [unique drinks]. Try one. And remember. You get rowdy, the [Bouncers] crush you.");
	}
	elsif ($text=~/unique drinks/i) {
		quest::say("I have been all over Norrath and even served with some very great [barkeeps in Freeport]. I am the creator of both [Flaming Clurg] and Ogre Swill.");
	}
	elsif ($text=~/barkeeps in freeport/i) {
		quest::say("Yes. I have journeyed to many taverns, but it was in Freeport that I acquired most of my art. I compiled all my drink recipes in a [special book]");
	}
	elsif ($text=~/special book/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I compiled all my drinks into one book. I lost this book while in Freeport. No doubt some barkeep is experimenting with it. I would pay dearly for the return of my Barkeep Compendium.");
		}
		#:: Match if faction is Indifferent or worse
		else {
			quest::say("Find ways to help all in Oggok. Then we will have conversation.");
		}
	} 
	elsif ($text=~/bouncers/i) {
		quest::say("The Bouncers were organized by me. As I traveled to many of the world's taverns I encountered great enforcers called bouncers. It was their duty to keep order amongst chaos. When I returned and rose to greatness after the creation of the [Flaming Clurg]. I organized the Oggok Bouncers to keep order amongst the [rival guilds].");
	}
	elsif ($text=~/flaming clurg/i) {
		quest::say("The Flaming Clurg was my greatest creation. It brought me great respect in Oggok. Unfortunately, I have heard tales of an [imposter drink].");
	}
	elsif ($text=~/imposter drink/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("I have heard there is a barkeep who dares to sell a similar drink in Neriak's Foreign Quarter. I have put a price on his head. Anyone who returns with his head shall be greatly rewarded.");
		}
		#:: Match if faction is Indifferent or worse
		else {
			quest::say("Find ways to help all in Oggok. Then we will have conversation.");
		}
	}
	elsif ($text=~/rival guilds/i) {
		quest::say("Oggok has been the battleground for the feud between the Greenblood knights and shamans and the Craknek warriors. It is fueled by the superior intellect of the Greenbloods. Few remember that I, Clurg, was once dim, but now I speak with great words.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13379 - Barkeep Compendium
	if (plugin::takeItems(13379 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("'Ahhh!! My Barkeep Compendium has been returned!! I am in your debt. I do not like to be in any man's debt. Let me offer you this as payment for your great service. Obtaining my book could not have been a simple task.");
			#:: Give a 6359 - Stein of Moggok
			quest::summonitem(6359);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(228, 50);	#:: + Clurg
			quest::faction(274, -50); 	#:: - Kazon Stormhammer
			quest::faction(261, 50);	#:: + Green Blood Knights
			quest::faction(232, 50);	#:: + Craknek Warriors
			quest::faction(337, 50);	#:: + Oggok Guards
			#:: Grant a moderate amount of experience
			quest::exp(3000);
		}
		else {
			quest::say("Find ways to help all in Oggok. Then we will trade.");
			#:: Return a 13379 - Barkeep Compendium
			quest::summonitem(13379);
		}
	}
	#:: Match a 13378 - Ogre Head (Pungla's Head)
	elsif (plugin::takeItems(13378 => 1)) {
		#:: Match if faction is Indifferent or better
		if ($faction <= 5) {
			quest::say("'Haha! He shall mix no more Flaming Pungla's! I shall drink from his rotting skull tonight. As for you, take this and call it yours. Consider yourself a friend of Clurg.");
			#:: Give a 13355 - Crude Stein, 6302 - Ogre War Maul, 10024 - Pearl, 6006 - Warhammer, 3131 - Large Ringmail Belt, 3136 - Large Ringmail Boots (3136), 3133 - Large Ringmail Bracelet, 3130 - Large Ringmail Cape, 3128 - Large Ringmail Coat, 3125 - Large Ringmail Coif (3125), 3134 - Large Ringmail Gloves, 3129 - Large Ringmail Mantle, 3127 - Large Ringmail Neckguard, 3135 - Large Ringmail Pants (3135), 3132 - Large Ringmail Sleeves, 10021 - Star Rose Quartz, 9019 - Large Kite Shield
			quest::summonitem(quest::ChooseRandom(13355,6302,10024,6006,3131,3136,3133,3130,3128,3125,3134,3129,3127,3135,3132,10021,9019));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(228, 15);		#:: + Clurg
			quest::faction(274, -15); 		#:: - Kazon Stormhammer
			quest::faction(261, 15);		#:: + Green Blood Knights
			quest::faction(232, 15);		#:: + Craknek Warriors
			quest::faction(337, 15);		#:: + Oggok Guards
			#:: Grant a moderate amount of experience
			quest::exp(6000);
		}
		else {
			quest::say("Find ways to help all in Oggok. Then we will trade.");
			#:: Return a 13378 - Ogre Head (Pungla's Head)
			quest::summonitem(13378);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
