sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings, $name!  We of the Dead are proud to have you among us.  Your lineage is well known.  Still, you must learn to claw your way to the upper echelon.  There are many [menial tasks] to be performed before you can truly be inducted as a member.");
	}
	elsif ($text=~/menial tasks/i) {
		quest::say("You cannot avoid the toil of peons. We have all spent our time in the lower ranks. There are duties such as [collecting beetle eyes] or [courier duties].");
	}
	elsif ($text=~/collecting beetle eyes/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("Take this chest.  It has been fitted with a mold designed to hold ten beetle eyes.  We require them for further experiments.  Do not return until you fill the chest.");
			#:: Give a 17930 - Empty Box
			quest::summonitem(17930);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
	elsif ($text=~/courier duties/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("We require you to retrieve messages from our nearby agents. Periodically, you are required to venture to them and ask the agent if he has any messages for Neriak. If he does, you will return all correspondence to the designated party. Presently, we have enough runners. Here. You may see the list.");
			#:: Give a 18890 - Sealed List
			quest::summonitem(18890);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
	elsif ($text=~/innoruuk/i) {
		quest::say("He is the Prince of Hate. We are his vessels of destruction. There no greater servants of Innoruuk than The Dead. His word is law. Once the Teir'Dal obtain the second half of the [Scroll of G`han], all Norrath shall be enveloped by his glorious hate.");
	}
	elsif ($text=~/scroll of g`han/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("The Scroll of G'han was scribed long ago by the great necromancer G`han. With it, we can directly commune with Innoruuk. Unfortunately one portion of the scroll was taken from us by a rogue who was hired by the Koada'Dal. In Felwithe it doth lye. The Indigo Brotherhood now attempts to reclaim it.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
	elsif ($text=~/other components/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("Take this chest. This one must be filled with [Kerra Isle beetle] eyes. When you finish filling the chest, be sure to return to me with a [wooly mammoth] tusk also. Be quick about it and I just may reward you with something special.");
			#:: Give a 17934 - Beetle Eye Chest
			quest::summonitem(17934);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
	elsif ($text=~/kerra isle beetle/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("The shipping route between Qeynos and Erudin includes a stop on an island filled with friendly catpeople. Also on this isle is the Kerra Isle beetle. It is indigenous to Kerra Isle and the catpeople are very protective of them.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
	elsif ($text=~/wooly mammoth/i) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("I hear that wooly mammoths can be found in the peaks of Everfrost. They are fierce beasts. I would hate to annoy one.");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("When you learn to serve the Dead, then I will find the time to speak of such things.");
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13389 - Box of Beetle Eyes
	if (plugin::takeItems(13389 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("Fantastic work, my child! We shall store these for further experiments. Take this as extra payment for a fine job. You have done so well I believe you can assist in obtaining two [other components].");
			#:: Give a random reward: 13021 - Neriak Nectar, or 13022 - Rotgrub Rye
			quest::summonitem(quest::ChooseRandom(13021, 13022));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(239, 10);		#:: + The Dead
			quest::faction(303, 1);			#:: + Queen Cristanos Thex
			quest::faction(278, -1);		#:: - King Naythox Thex
			quest::faction(275, -1);		#:: - Keepers of the Art
			quest::faction(245, -1);		#:: - Eldritch Collective
			quest::faction(1522, -20);		#:: - Primordial Malice
			#:: Grant a small amount of experience
			$client->AddLevelBasedExp(5, 8);
			#:: Create a hash for storing cash - 140 to 180cp
			my %cash = plugin::RandomCash(140,180);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
			#:: Return a 13389 - Box of Beetle Eyes
			quest::summonitem(13389);
		}
	}
	#:: Match a 13395 - Beetle Eye Chest and a 10124 - Mammoth Tusks
	elsif (plugin::takeItems(13395 => 1, 10124 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <=4) {
			quest::say("Excellent work, young one! You are sure to be an asset to our faction. Let us see if we can help you on your journey to power. I believe this can be of assistance to a young necromancer of the Dead.");
			#:: Give a random reward: 15035 - Spell: Bind Affinity, 15362 - Spell: Convoke Shadow, 15445 - Spell: Lifedraw
			quest::summonitem(quest::ChooseRandom(15035, 15362, 15445));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(239, 20);		#:: + The Dead
			quest::faction(303, 3);			#:: + Queen Cristanos Thex
			quest::faction(278, -3);		#:: - King Naythox Thex
			quest::faction(275, -3);		#:: - Keepers of the Art
			quest::faction(245, -3);		#:: - Eldritch Collective
			quest::faction(1522, -40);		#:: - Primordial Malice
			#:: Grant a small amount of experience
			$client->AddLevelBasedExp(5, 8);
			#:: Create a hash for storing cash - 140 to 180cp
			my %cash = plugin::RandomCash(140,180);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("How dare you enter my presence?!  In the name of the Dead I should strike you down!");
			#:: Return a 13395 - Beetle Eye Chest and a 10124 - Mammoth Tusks
			quest::summonitem(13395);
			quest::summonitem(10124);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
