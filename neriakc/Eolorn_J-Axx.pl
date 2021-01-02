sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
	#:: Also, enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_ENTER {
	#:: Match a 18752 - Tattered Note
	if (plugin::check_hasitem($client, 18752)) { 
		$client->Message(15,"Eolorn J'Axx turns towards you. 'Are you a new recruit? All new recruits must read the note in their inventory and hand it to me to begin their training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("It is good to see new blood in our halls. I am the leader of this house. If you are looking for guidance, seek out the masters within. I rarely appoint tasks to new recruits, unless I need to retrieve the [foreign take].");
	}
	elsif ($text=~/foreign take/i) {
		quest::say("We have rogues operating in a few great cities. We send young rogues to retrieve the monthly take. We have been awaiting the Freeport delivery. The last youth I sent must have been killed along the way. I will need a new runner to [retrieve the chest].");
	}
	elsif ($text=~/chest/i) {
		quest::say("You seem able enough. Here. Take this note to Freeport. Go through the Commonlands and be careful not to encounter any Freeport guards. There is a network of aqueducts accessible through hidden passages. Search the outside walls of Freeport. Take the note to Giz. She will meet you at night, on an island in the harbor. Good luck.");
		#:: Give a 18844 - Sealed Letter
		quest::summonitem(18844);
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
	#:: Match a 18752 - Tattered Note
	if (plugin::takeItems(18752 => 1)) {
		quest::say("You wanna be part of the Ebon Mask, huh? Well, you'll need to impress me. Here's your guild tunic. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available to you. Go find Hekzin, he'll have some work for you, I'm sure. Don't screw up, kid. That pretty face of yours would make a fine trophy, got it? Now, quit breathin' my air, and go get some work done.");
		#:: Give a 13581 - Old Black Tunic*
		quest::summonitem(13581);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(244, 100);		#:: + Ebon Mask
		quest::faction(262, -5);		#:: - Guard of Qeynos
		quest::faction(320, -25);		#:: - Wolves of the North
		quest::faction(263, -10);		#:: - Guardians of the Vale
		quest::faction(329, -25);		#:: - Carson McCabe
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 13891 - locked Chest
	elsif (plugin::takeItems(13891 => 1)) {
		quest::say("The Hall thanks you. You have performed supremely. We are glad to have you with us. I offer you this, loot from former takes. I hope you can use it.");
		#:: Give a random reward:  7008 - Rusty Rapier, 7007 - Rusty Dagger, 1051 - Rat Pelt Cape, 1038 - Tattered Cloth Sandal, 1050 - Rat Fur Cap
		quest::summonitem(quest::ChooseRandom(7008, 7007, 1051, 1038, 1050));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(244, 10);		#:: + Ebon Mask
		quest::faction(262, -1);		#:: - Guard of Qeynos
		quest::faction(320, -2);		#:: - Wolves of the North
		quest::faction(263, -1);		#:: - Guardians of the Vale
		quest::faction(329, -2);		#:: - Carson McCabe
		#:: Grant a small amount of experience
		quest::exp(100)
		#:: Create a hash for storing cash - 5 to 15cp
		my %cash = plugin::RandomCash(5, 15);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});;
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
	#:: Return unused items
	plugin::returnUnusedItems();
}
