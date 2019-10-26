sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Check for 18711 - Tattered Note
	if (plugin::check_hasitem($client, 18711)) {
		$client->Message(15,"As you get your bearings, a healing energy seems to sweep over you and an almost etheral voice seems to echo in your mind. 'Welcome young paladin of Rodcet. I am Guild Master Camlend Serbold. Read the note in your inventory and hand it to me to begin your training.'");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I say, good to meet you, $name!  I am Camlend Serbold.  Some call me Serbold the Great.  I am the leader of the righteous order of paladins which serves the Temple of Life.  Together with the clerics of this temple, we defend the will of the great [Rodcet Nife] and smite all who dare to oppose us.");
	}
	elsif ($text=~/rodcet nife/i) {
		quest::say("Do you feel your heart beating within your chest?  It is Rodcet Nife, the Prime Healer, whose breath keeps it in perfect rhythm.  If you do not pray to His glory then I assure you, someday when your heart begins to slow, you shall be crying out loud to Rodcet Nife.");
	}
	#:: Match if faction is kindly or better
	elsif ($faction <= 3) {
		if ($text=~/lord grimrot/i) {
			quest::say("You have heard of Lord Grimrot? He is a shadowknight working with the Bloodsabers. We have word he is trying to build an army of undead. Only a powerful knight can rid the lands of Grimrot. So, did you come here to [defend life]?");
		}
		elsif ($text=~/defend life/i) {
			quest::say("Then go to the Plains of Karana. Somewhere there, Lord Grimrot is hatching his little plan for the Bloodsabers. Bring me his evil scythe and his heart. It is said that upon his death, his soul will be absorbed into this weapon of darkness. Do this and be rewarded.");
			#:: Listed as a separate say message--something is likely missing.
			quest::say("We must have both Lord Grimrot's scythe, Pestilence,and his misshapen heart.");
		}
	}
	elsif($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		#:: Give a 51121 - Tradeskill Basics : Volume I
		quest::summonitem(51121);
	}
	elsif($text=~/second book/i) {
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		#:: Give a 51122 - Tradeskill Basics : Volume II
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
	#:: Match a 18711 - Tattered Note
	if (plugin::takeItems(18711 => 1)) {
		quest::say("Welcome to the Temple of Life. You have much to learn and we have much work to do. Pain, hurt, disease and death lurk everywhere, our job is seemingly endless, but none is more gratifying. Here is our guild tunic, represent us well. Davloran Girionlis will help you to get started. Return to me when you have become more experienced in our art, I will be able to further instruct you on how to progress through your early ranks, as well as in some of the various [trades] you will have available for you.");
		#:: Give a 13506 - Faded Tunic*
		quest::summonitem(13506);
		#:: Ding
		quest::ding();
		#:: Set factions
		quest::faction(341, 100);		#:: + Priests of Life
		quest::faction(280, 30);		#:: + Knights of Thunder
		quest::faction(262, 50);		#:: + Guards of Qeynos
		quest::faction(221, -25);		#:: - Bloodsabers
		quest::faction(219, 15);		#:: + Antonius Bayle
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Match a 13324 - Pestilence Scythe and a 13325 - Decaying Heart
	elsif (plugin::takeItems(13324 => 1, 13325 => 1)) {
		#:: Match if faction is kindly or better
		if ($faction <= 3) {
			quest::say("We thank you for your service. With Lord Grimrot's evil soul trapped in this scythe, all but the truly evil shadowknights would be able to wield it. I would like to present you with this as a token of our appreciation. Your devotion to life is supreme. Go now, and serve life.");
			#:: Give a 12238 - Aegis of Life
			quest::summonitem(12238);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 30);		#:: + Priests of Life
			quest::faction(280, 30);		#:: + Knights of Thunder
			quest::faction(262, 30);		#:: + Guards of Qeynos
			quest::faction(221, -55);		#:: - Bloodsabers
			quest::faction(219, 30);		#:: + Antonius Bayle
			#:: Grant a moderate amount of experience
			quest::exp(1000);
			#:: Create a hash for storing cash - 8000 to 9000cp
			my %cash = plugin::RandomCash(8000,9000);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("You have not yet proven yourself.");
			#:: Return a 13324 - Pestilence Scythe and a 13325 - Decaying Heart
			quest::summonitem(13324);
			quest::summonitem(13325);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
