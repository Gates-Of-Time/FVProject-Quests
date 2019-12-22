sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}
sub EVENT_ENTER {
	#:: Match a 18758 - Tattered Note
	if (plugin::check_hasitem($client, 18758)) { 
		$client->Message(15,"Xon Quexill turns towards you. 'Welcome to the Lodge of the Dead. I am Xon Quexill and with my training you will learn to master the Necromantic arts. Read the note in your inventory and hand it to me when you are ready to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the Lodge of the Dead. May you serve our Queen with the bleeding of others.");
	}
#::P	elsif ($text=~/befallen/i) {
#::O		quest::say("It is true that the return of Marnek could create difficulties for us, especially if this has the blessing of Solusek Ro himself. Therefore, I command you to deliver to me any further information you uncover regarding the plans of the Burning Dead, and likewise I order you to return here at my bidding for further instructions in this matter. Now, begone.");
#::P	}
	elsif ($text=~/trades/i) {
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
	#:: Match a 18758 - Tattered Note
	if (plugin::takeItems(18758 => 1)) {
		quest::say("Just what I need in this outfit, another waste of flesh. Here, put this on. Go bother Noxhil for awhile, I'm sure he has some menial task for you. You'd better prove yourself a value to me. I hear I can get few plat for the skull of an idiot on the black market, and I could stand make fortune from your type. Now, get outta here.");
		#:: Give a 13587 - Dark Stained Training Robe*
		quest::summonitem(13587);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(239, 100);		#:: + The Dead
		quest::faction(303, 15);		#:: + Queen Cristanos Thex
		quest::faction(278, -15);		#:: - King Naythox Thex
		quest::faction(275, -15);		#:: - Keepers of the Art
		quest::faction(245, -15);		#:: - Eldritch Collective
		quest::faction(1522, -200);		#:: - Primordial Malice
		#:: Grant a small amount of experience
		quest::exp(100);
	}
#::P	#:: Match a 18474 - Scroll of the Burning Dead
#::O	elsif(plugin::takeItems(18474 =>1)) {
#::P		quest::say("Very interesting, servant of the Queen. This deed has stayed my wrath for this interruption of my business. Where did you find this?");
#::-		#:: Ding!
#::E		quest::ding();
#::r		#:: Set factions
#::a		quest::faction(239, 1);			#:: + The Dead
#::		quest::faction(303, 1);			#:: + Queen Cristanos Thex
#::Q		quest::faction(278, -3);		#:: - King Naythox Thex
#::u		quest::faction(275, -3);		#:: - Keepers of the Art
#::e		quest::faction(245, -3);		#:: - Eldritch Collective
#::s		quest::faction(1522, -3);		#:: - Primordial Malice
#::t		#:: Grant a large amount of experience
#::		quest::exp(6400);
#::		#:: Create a hash for storing cash - 600 to 800cp
#::		my %cash = plugin::RandomCash(600,800);
#::		#:: Grant a random cash reward
#::		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
#::	}
#::	#:: Match a 31492 - Ghostly Bridle
#::	elsif (plugin::takeItems(31492 => 1)){
#::P		quest::say("Ha ha ha ha! Oh the poor steed of a noble paladin! Bah, it will find no rest yet. I who can command the spirits of the dead demand it serve you once again.");
#::O		#:: Give a 31496 - Bridle of Sir Ariam
#::P		quest::summonitem(31496);
#::-		#:: Ding!
#::E		quest::ding();
#::r		#:: Set factions
#::a		quest::faction(239, 1);			#:: + The Dead
#::		quest::faction(303, 1);			#:: + Queen Cristanos Thex
#::Q		quest::faction(278, -3);		#:: - King Naythox Thex
#::u		quest::faction(275, -3);		#:: - Keepers of the Art
#::e		quest::faction(245, -3);		#:: - Eldritch Collective
#::s		quest::faction(1522, -3);		#:: - Primordial Malice
#::t		#:: Grant a large amount of experience
#::		quest::exp(6400);
#::	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
