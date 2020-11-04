sub EVENT_SPAWN {
	#:: Create a proximity 100 units across, 50 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 25, $z + 25, 0);
}

sub EVENT_ENTER {
	#:: Match a 18751 - Tattered Note
	if (plugin::check_hasitem($client, 18751)) { 
		$client->Message(15,"The cold voice of a female fills your mind with dread, 'I am Seloxia Punox. Seek me out in the Cauldron of Hate and hand me our note so that you may begin on the path of the Warrior. True power can be yours should you have the will to train hard enough!'");
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::emote("'s eyes flare with fury as her beautiful features twist into a snarl of hatred that echoes her hissing voice, 'How dare you address me in such a fashion?!  I am the leader of the Indigo Brotherhood!!  You are lucky I do not strike you down where you stand!  You shall address me as 'Mistress.'  Many warriors have died so that I might gain this title.'"); 
	}
	elsif ($text=~/mistress/i) {
		quest::emote("maintains her imposing posture as she indifferently eyes $name, 'You stand now in the Cauldron of Hate -- the Indigo Brotherhood. We are an organization of Neriak's finest warriors whom remain dedicated to Neriak, the Dark Father, and our founder -- his majesty, King Naythox Thex. I am Seloxia Punox, second to only his majesty in command of the Brotherhood. From the Cauldron of Hate, we maintain the protection of the city both within our city walls and beyond in the forest of Nektulos. Perhaps you would wish to prove yourself worthy of our ranks and perform a [little test] of your skills and dedication?'");
	}
	elsif ($text=~/little test/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("My little test is this. I desire a report from Ambassador K'Rynn in the Ogre city of Oggok. You shall run to him. I will not wait until you raise your fighting skills. Combat is not your test. Overcoming the odds is. Fast agile warriors are we. We desire nothing less. Will you [venture to Oggok]?");
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Go! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
		}
		else {
			quest::say("Your head will make a fine trophy in the halls of the Indigo Brotherhood.");
		}	
	}
	elsif ($text=~/venture to oggok/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Then you will go at once. Find your own way. Deliver this note to Ambassador K'Rynn and he shall give you the note to return to me. Do not stop to practice your skills. I offer this test to only the young warriors. If you die, then so be it. We need not inferior warriors. Now go!!");
			#:: Give a 18842 - Sealed Letter
			quest::summonitem(18842);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Go! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
		}
		else {
			quest::say("Your head will make a fine trophy in the halls of the Indigo Brotherhood.");
		}
	}
	elsif ($text=~/trade/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match a 18751 - Tattered Note
	if (plugin::takeItemss(18751 => 1)) {
		quest::say("I shall reserve any official welcoming until you have proven yourself a suitable member for the Indigo Brotherhood. That proof shall be obtained by your progression in your training. See Jarrex N`Ryt, one of my most trusted trainers in the Brotherhood and obey his command carefully if you wish to succeed as a member of the Brotherhood. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13580 - Old Training Tunic*
		quest::summonitem(13580);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(270, 100);		#:: + Indigo Brotherhood
		quest::faction(326, -15);		#:: - Emerald Warriors
		quest::faction(311, -5);		#:: - Steel Warriors
		quest::faction(1522, -200);		#:: - Primordial Malice
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 18843 - Sealed Letter
	elsif (plugin::takeItems(18843 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("Very fine work my young warrior. You may soon be ready to become a Teir'Dal courier. For now, we shall reward you. This will assist you in further service to the Indigo Brotherhood and King Naythox Thex.");   
			#:: Give a random reward: 5026 - Bronze Short Sword, 1001 - Cloth Cap, 1002 - Cloth Veil, 1003 - Cloth Choker, 1004 - Cloth Shirt, 1005 - Cloth Shawl, 5014 - Rusty Axe, 5015 - Rusty Scythe, 5021 - Rusty Scimitar, 5027 - Bronze Long Sword
			quest::summonitem(quest::ChooseRandom(5026, 1001, 1002, 1003, 1004, 1005, 5014, 5015, 5021, 5027));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(270, 10);		#:: + Indigo Brotherhood
			quest::faction(326, -1);		#:: - Emerald Warriors
			quest::faction(311, -1);		#:: - Steel Warriors
			quest::faction(1522, -20);		#:: - Primordial Malice
			#:: Grant a small amount of experience
			quest::exp(250);
		}
		#:: Match if faction is Indifferent
		elsif ($faction == 5) {
			quest::say("Go! Return when you have done more to serve the Indigo Brotherhood of Neriak. Fewer Leatherfoot Raiders in Nektulos and a few Leatherfoot skullcaps in the palms of Master Narex shall prove your true warrior nature and loyalty to our house.");
			#:: Return a 18843 - Sealed Letter
			quest::summonitem(18843);
		}
		else {
			quest::say("Your head will make a fine trophy in the halls of the Indigo Brotherhood.");
			#:: Return a 18843 - Sealed Letter
			quest::summonitem(18843);
		}
	}
	#:: do all other handins first with plugin, then let it do disciplines
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
