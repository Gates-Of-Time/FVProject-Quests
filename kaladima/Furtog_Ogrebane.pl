sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 20 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Match a 18766 - Recruitment Letter
	if (plugin::check_hasitem($client, 18766)) { 
		$client->Message(15,"Furtog Ogrebane glances your way. 'Ah a new recruit! Oh, how I enjoy meeting new recruits! With my training one day you could be a powerful member of the Stormguard! Read the note in your inventory and then hand it to me when you wish to begin your training!");
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hail. mighty $name! Welcome to Stormguard Hall. I am Captain Furtog Ogrebane, only surviving descendant of the legendary Trondle Ogrebane, slayer of the [mudtoes]. If you wish to serve the grand city of Kaladim, I urge you to speak with any of the trainers. Good day.");
	}
	if ($text=~/mudtoe/i) {
		quest::say("The Mudtoes were a small but mighty clan of ogres. My great father [Trondle] destroyed them. I have heard disturbing rumors of one Mudtoe surviving. Would you mind [searching] for the Mudtoes or have you other duties to perform?");
	}
	if ($text=~/trondle/i) {
		quest::say("Trondle was my great father and slayer of the Mudtoes. He was killed by those vile Crushbone orcs. If you truly wish to help Kaladim remain safe, speak with trainer Canloe Nusback. Say that you are ready to serve Kaladim.");
	}
	if ($text=~/searching/i) {
		quest::say("I have heard persistent rumors of two Mudtoe ogres who survived the slaughter.  Go to the port of Butcherblock.  Those dock hands must have heard of the name [Mudtoe].  Bring me the remaining heads of the Mudtoes!!  I want all the Mudtoes dead!!  Do not return until you have them both!!");
	}
	if ($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	if ($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM { 
	#:: Match a 18766 - Recruitment Letter
	if (plugin::takeItems(18766 => 1)) {
		quest::say("Greetings, friend, and welcome to Stormguard Hall! I am Furtog Ogrebane, Captain of the Guard. We shall train you to be a fearless warrior, who will serve and protect King Kazon well. Here is your tunic. Once you are ready to begin your training please make sure that you see Dirjadak Barbrawler, he can assist you in developing your hunting and gathering skills. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you.");
		#:: Give a 13515 - Dirt Stained Tunic*
		quest::summonitem(13515);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Set factiions
		quest::faction(312, 100);	#:: + Storm Guard
		quest::faction(274, 15);	#:: + Kazon Stormhammer
		quest::faction(293, 15);	#:: + Miners Guild 249
		quest::faction(290, 25);	#:: + Merchants of Kaladim
		quest::faction(232, -25);	#:: - Craknek Warriors
	}
	#:: Match a 13316 - Ogre Head and a 13317 - Ogre Head
	elsif (plugin::takeItems(13316 => 1, 13317 => 1)) {
		quest::say("Finally my great father's work has been completed. All the Mudtoe ogres have been exterminated. Thank you. Take this weapon which my father pried from the cold, dead hands of the Mudtoe ogre captain. It is called an ogre war maul. May you wield it with honor in the name of Kaladim.");
		#:: Give a 6302 - Ogre War Maul
		quest::summonitem(6302);
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(250);
		#:: Create a hash for storing cash - 1700 to 1750cp
		my %cash = plugin::RandomCash(1700,1750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factiions
		quest::faction(312, 50);	#:: + Storm Guard
		quest::faction(274, 7);		#:: + Kazon Stormhammer
		quest::faction(293, 7);		#:: + Miners Guild 249
		quest::faction(290, 12);	#:: + Merchants of Kaladim
		quest::faction(232, -12);	#:: - Craknek Warriors
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
