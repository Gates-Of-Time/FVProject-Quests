sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello.  Let me know if I can get you a drink.");
	}
	elsif ($text=~/who.*king/i) {
		quest::say("The mighty empire of the Teir'Dal is ruled by King Naythox Thex.  All hail Thex!");
	}
	elsif ($text=~/who.*the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/where.*lodge of the dead/i) {
		quest::say("The Dead are the shadowknights and necromancers of Neriak.  They were formed by Queen Cristanos herself.  Even among the Teir'Dal they are feared and they keep to themselves within the Lodge of the Dead in the Third Gate.  I have heard they take orders only from the queen.");
	}
	elsif ($text=~/who.*queen cristanos/i) {
		quest::say("Queen Cristanos is the queen of Neriak, of course!  She was the one who formed the necromancers and shadowknights into the guild called the Dead.");
	}
	elsif ($text=~/what.*indigo brotherhood/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*cauldron of hate/i) {
		quest::say("In the Commons Quarter can be found the Indigo Brotherhood, Teir'Dal warriors.  They are the armies of King Naythox Thex and serve as the trainers of the Dreadguard and dragoons.  Why the masters chose to build the Cauldron of Hate in that area and not the Third Gate is an amazement to me.");
	}
	elsif ($text=~/what.*commons quarter/i) {
		quest::say("You are in the Commons Quarter.  This quarter is designated for all common Teir'Dal.  You can find an abundance of merchants as well as the arena and warriors guild here.");
	}
	elsif ($text=~/what.*warriors guild/i) {
		quest::say("Within this area you will find the Cauldron of Hate which is home to the Teir'Dal warriors.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18200 - Note (TomeOfAges1)
	if (plugin::takeItems(18200 => 1)) {
		quest::say("Take this note and be gone with you.");
		#:: Give a 18201 - Note (TomeOfAges2)
		quest::summonitem(18201);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 10);	#:: + Dark Bargainers
		quest::faction(334, 1);		#:: + Dreadguard Outer
		quest::faction(370, 1);		#:: + Dreadguard Inner
		#:: Grant a small amount of experience, based on level
		$client->AddLevelBasedExp(10, 10);
	}
	#:: Match a 13846 - Dark Elf Decapitated Head and a 18201 - Note (TomeOfAges2)
	elsif (plugin::takeItems(13846 => 1, 18201 =>1)) {
		quest::say("Take this book and be gone with you.");
		#:: Give a 18202 - Book of Turmoil
		quest::summonitem(18202);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(236, 10);	#:: + Dark Bargainers
		quest::faction(334, 1);		#:: + Dreadguard Outer
		quest::faction(370, 1);		#:: + Dreadguard Inner
		#:: Grant a small amount of experience, based on level
		$client->AddLevelBasedExp(10, 10);
	}
	#:: Match 1000pp, a 19071 - Torn, Burnt Book, and a 19070 - Torn, Frost-covered Book
	elsif (plugin::takeItemsCoin(0, 0, 0, 1000, 19071 => 1, 19070 => 1)) {
		#:: Missing dialogue
		#:: Give a 18302 - Book of Scale
		quest::summonitem(18302);
		#:: Ding
		quest::ding();
		#:: Missing faction reward
	}
  	#:: Return unused items
	plugin::returnUnusedItems();
}
