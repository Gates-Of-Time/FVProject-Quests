sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18789 - Tattered Note
	if (plugin::check_hasitem($client, 18789)) { 
		$client->Message(15,"You have entered what appears to be the guild hall of the Greenbloods. A large, brutish Ogre seems to be annoyed by your appearance. 'Wut? Where you come from? Oh, you here to train? Read note in inventory and then hand to me to start. Me make you strong Greenblood sum day!'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("You [Greenblood]?");
	}
	elsif ($text=~/greenblood/i) {
		quest::say("Good, you mine.  We tuffest, bestest, scariest warriors in da Norrath.  Not like dem wimpy Craknek hoomie wannabees.  You Greenblood, you my toy.  You lives or dies at my will.  Go, brings me many lizard meats cause I Greenblood leader and I berry hungry lots.  So hungry dat I eats four lizards.  Go bring meat or I eats you.");
	}
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
	#:: Match a 18789 - Tattered Note
	if (plugin::takeItems(18789 => 1)) {
		quest::say("Soonog own you now.. fight for Soonog.. Soonog make you strong.. When you ready for task you tell Soonog.  Soonog army rule all!! You return to me when you stronger, I teach you many things I know, including how to start working in the various [trades].");
		#:: Give a 13527 - Green Stained Skin Tunic*
		quest::summonitem(13527);
		#:: Ding!
		quest::ding();
		#:: Set Factions
		quest::faction(261, 100);	#:: + Green Blood Knights
		quest::faction(228, 50);	#:: + Clurg
		quest::faction(312, -15);	#:: -  Storm Guard
		quest::faction(308, -15);	#:: - Shadowknights of Night Keep
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match four 13410 - Lizard Meat
	elsif (plugin::takeItems(13410 => 4)) {
		quest::say("Small meats but is good nuff.  You take dis and go kill eberyting.  Make all scared of da Greenblood knights.  You get ready for next inb.. ins.. invat.. you get ready for next war.  You learning stuff, you come bak here and me teach you more Greenblood stuf so we be more tuffest.");
		#:: Give a 5023 - Rusty Two Handed Sword
		quest::summonitem(5023);
		#:: Ding!
		quest::ding();
		#:: Set Factions
		quest::faction(261, 5);		#:: + Green Blood Knights
		quest::faction(228, 5);		#:: + Clurg
		quest::faction(312, -10);	#:: -  Storm Guard
		quest::faction(308, -10);	#:: - Shadowknights of Night Keep
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
